<!--
              v-autonumeric

@version      0.2.0
@date         2018-01-31 UTC 22:00

@author       Alexandre Bonneau
@copyright    2018 © Alexandre Bonneau <alexandre.bonneau@linuxfr.eu>

@summary      A Vue.js component that 'vuetify' the vue-autonumeric one

Please report any bugs to https://github.com/autoNumeric/v-autonumeric

@license      Released under the MIT License
@link         http://www.opensource.org/licenses/mit-license.php

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sub license, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
-->

<template>
	<v-flex :class="topLevelClasses">
		<div :class="{
			     'primary--text'          : true,
			     'input-group'            : true,
			     'input-group--text-field': true,
			     'input-group--required'  : required,
			     'input-group--focused'   : isFocused,
			     'input-group--dirty'     : isDirty,
			 }"
		>
			<label :for="id">{{ label }}</label>
			<div class="input-group__input"
			     ref="inputParent"
			>
				<vue-autonumeric
						ref="autoNumericElement"
						v-model="theValue"
						:options="anOptions"
						:id="id"
						:name="id"
						@focus.native="focus"
						@blur.native="blur"
						v-on:autoNumeric:formatted.native="updateCurrentValue"
						v-on:autoNumeric:rawValueModified.native="updateVModel"
						v-on:autoNumeric:initialized.native="updateAutoNumericElement"
				/>
				<i aria-hidden="true"
				   v-show="isDirty && clearable"
				   :class="{
				       icon                         : true,
				       'material-icons'             : true,
				       'input-group__append-icon'   : true,
				       'input-group__icon-cb'       : isDirty && clearable,
				       'input-group__icon-clearable': isDirty && clearable,
				   }"
				   @click="clear"
				>clear</i>
			</div>
			<div class="input-group__details"></div>
		</div>
	</v-flex>
</template>

<script>
    // Libraries
    import VueAutonumeric  from '../../../../node_modules/vue-autonumeric/dist/vue-autonumeric';

    export default {
        name: 'v-autonumeric',

        components: {
            VueAutonumeric,
        },

        props: {
            value: {
                type    : [Number,String],
                required: false,
            },

            id: {
                type    : String,
                required: false,
            },

            label: {
                type    : String,
                required: true,
            },

            options: {
                type   : [Object, String, Array],
                required: false,
            },

            classes: { // The additional classes
                type    : [String, Array],
                required: false,
            },

            required: Boolean,

            clearable: {
                type   : Boolean,
                default: false,
            },
        },

        data() {
            return {
                autoNumericElement: null, // Keep a reference to the AutoNumeric element
                domElement        : null,
                isFocused         : false,
                theValue          : null,
                currentValue      : null,
            };
        },

        mounted() {
            this.theValue = this.value;
        },

        computed: {
            isDirty() {
                return this.currentValue !== '' && this.currentValue !== null;
            },

            /**
             * Generate a special AutoNumeric option array that disable the currency symbol on hover when the input is empty.
             * This is needed since the label is moved onto that input when unfocused and empty, and this would make it difficult to read if the currency symbol is displayed too.
             */
            anOptions() {
                let updatedOptions = [];
                if (Array.isArray(this.options)) {
                    updatedOptions = this.options;
                } else {
                    updatedOptions.push(this.options);
                }

                updatedOptions.push({ emptyInputBehavior: 'press' });

                return updatedOptions;
            },

            topLevelClasses() {
                const defaultTopLevelClass = 'an';
                if (Array.isArray(this.classes)) {
                    this.classes.push(defaultTopLevelClass);

                    return this.classes.join(' ');
                } else if (typeof this.classes === 'string') {
                    return this.classes;
                }

                return defaultTopLevelClass;
            },
        },

        watch: {
            /**
             * This watch is needed in order to update the formatting if an external change is detected (ie. if the user modify the input value directly from the devtools for instance)
             */
            value() {
                this.theValue = this.value;
            },
        },

        methods: {
            updateAutoNumericElement(event) {
                this.autoNumericElement = event.detail.aNElement;
                this.domElement = this.autoNumericElement.node();
            },

            /**
             * Whenever the AutoNumeric element dispatch an event saying that it got formatted, we update the `currentValue`, ie. the value displayed in the input element.
             */
            updateCurrentValue(event) {
                this.currentValue = event.detail.newValue;
            },

            /**
             * Update the v-model value and make the parent aware of that change.
             *
             * @param {Event} event This is needed if we want to use the `event.timeStamp` attribute
             */
            updateVModel(event) {
                if (this.autoNumericElement !== null) {
                    this.$emit('input', this.autoNumericElement.getNumber(), event);
                }
            },

            focus() {
                this.isFocused = true;
            },

            blur() {
                this.isFocused = false;
            },

            /**
             * Clear the AutoNumeric element.
             * Using the `emptyInputBehavior` option set to `'null'` is needed for clearing the value completely, otherwise the `currentValue` is set to `0`.
             */
            clear() {
                this.autoNumericElement.set(null, { emptyInputBehavior: 'null' });
            },
        },
    };
</script>

<style lang="scss" scoped>
	.an {
		flex-direction: column;

		input {
			box-shadow    : none;
			flex          : unset;
			height        : 30px;
			margin        : 0;
			min-width     : 0;
			overflow      : hidden;
			text-overflow : ellipsis;
			white-space   : nowrap;
			caret-color   : #03A9F4 !important;
		}
	}
</style>