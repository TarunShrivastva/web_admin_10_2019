<?php

namespace App\Admin\Extensions\Form;

use Encore\Admin\Form\Field;

class TopTenEditor extends Field
{
    public static $js = [
        '/packages/topteneditor/topteneditor.js',
    ];

    protected $view = 'admin.topten_editor';

    public function render()
    {
        $this->script = <<<EOT
            $(function () {

			    $('input[type=checkbox]').iCheck({checkboxClass:'icheckbox_minimal-blue'});
			    $('select').select2();

			    $('#add-table-field').click(function (event) {
			        $('#table-fields tbody').append($('#table-field-tpl').html().replace(/__index__/g, $('#table-fields tr').length - 1));
			        $('select').select2();
			        $('input[type=checkbox]').iCheck({checkboxClass:'icheckbox_minimal-blue'});
			    });

			    $('#table-fields').on('click', '.table-field-remove', function(event) {
			        $(event.target).closest('tr').remove();
			    });

			    $('#add-model-relation').click(function (event) {
			        $('#model-relations tbody').append($('#model-relation-tpl').html().replace(/__index__/g, $('#model-relations tr').length - 1));
			        $('select').select2();
			        $('input[type=checkbox]').iCheck({checkboxClass:'icheckbox_minimal-blue'});

			        relation_count++;
			    });

			    $('#model-relations').on('click', '.model-relation-remove', function(event) {
			        $(event.target).closest('tr').remove();
			    });

			    $('#scaffold').on('submit', function (event) {

			        //event.preventDefault();

			        if ($('#inputTableName').val() == '') {
			            $('#inputTableName').closest('.form-group').addClass('has-error');
			            $('#table-name-help').removeClass('hide');

			            return false;
			        }

			        return true;
			    });
			});
EOT;
        return parent::render();
    }
}