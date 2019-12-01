<div class="form-group {!! !$errors->has($errorKey) ?: 'has-error' !!}">

    <label for="{{$id}}" class="col-sm-2 control-label">{{$label}}</label>

    <div class="col-md-8">

        @include('admin::form.error')
            <table class="table table-hover" id="table-fields">
                <tbody>
                    <tr>
                        <th style="width: 200px">Field name</th>
                        <th>Type</th>
                        <th>Nullable</th>
                        <th>Key</th>
                        <th>Default value</th>
                        <th>Comment</th>
                        <th>Action</th>
                    </tr>
                @if(old('fields'))
                    @foreach(old('fields') as $index => $field)
                        <tr>
                            <td>
                                <input type="text" name="fields[{{$index}}][name]" class="form-control" placeholder="field name" value="{{$field['name']}}" />
                            </td>
                            <td><input type="checkbox" name="fields[{{$index}}][nullable]" {{ array_get($field, 'nullable') == 'on' ? 'checked': '' }}/></td>
                            <td>
                                <select style="width: 150px" name="fields[{{$index}}][key]">
                                    <option value="" {{$field['key'] == '' ? 'selected' : '' }}>NULL</option>
                                    <option value="unique" {{$field['key'] == 'unique' ? 'selected' : '' }}>Unique</option>
                                    <option value="index" {{$field['key'] == 'index' ? 'selected' : '' }}>Index</option>
                                </select>
                            </td>
                            <td><input type="text" class="form-control" placeholder="default value" name="fields[{{$index}}][default]" value="{{$field['default']}}"/></td>
                            <td><input type="text" class="form-control" placeholder="comment" name="fields[{{$index}}][comment]" value="{{$field['comment']}}" /></td>
                            <td><a class="btn btn-sm btn-danger table-field-remove"><i class="fa fa-trash"></i> remove</a></td>
                        </tr>
                    @endforeach
                @else
                <tr>
                    <td>
                        <input type="text" name="fields[0][name]" class="form-control" placeholder="field name" />
                    </td>
                    <td>
                        <?php $dbTypes = ['1','2']; ?>
                        <select style="width: 200px" name="fields[0][type]">
                            @foreach($dbTypes as $type)
                                <option value="{{ $type }}">{{$type}}</option>
                            @endforeach
                        </select>
                    </td>
                    <td><input type="checkbox" name="fields[0][nullable]" /></td>
                    <td>
                        <select style="width: 150px" name="fields[0][key]">
                            <option value="" selected>NULL</option>
                            <option value="unique">Unique</option>
                            <option value="index">Index</option>
                        </select>
                    </td>
                    <td><input type="text" class="form-control" placeholder="default value" name="fields[0][default]"></td>
                    <td><input type="text" class="form-control" placeholder="comment" name="fields[0][comment]"></td>
                    <td><a class="btn btn-sm btn-danger table-field-remove"><i class="fa fa-trash"></i> remove</a></td>
                </tr>
                @endif
                </tbody>
            </table>
                <div class='form-inline margin' style="width: 100%">
                    <div class='form-group'>
                        <button type="button" class="btn btn-sm btn-success" id="add-table-field"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add field</button>
                    </div>
                </div>
        <template id="table-field-tpl">
            <tr>
                <td>
                    <input type="text" name="fields[__index__][name]" class="form-control" placeholder="field name" />
                </td>
                <td>
                    <?php $dbTypes = ['1','2']; ?>
                    <select style="width: 200px" name="fields[__index__][type]">
                        @foreach($dbTypes as $type)
                            <option value="{{ $type }}">{{$type}}</option>
                        @endforeach
                    </select>
                </td>
                <td><input type="checkbox" name="fields[__index__][nullable]" /></td>
                <td>
                    <select style="width: 150px" name="fields[__index__][key]">
                        <option value="" selected>NULL</option>
                        <option value="unique">Unique</option>
                        <option value="index">Index</option>
                    </select>
                </td>
                <td><input type="text" class="form-control" placeholder="default value" name="fields[__index__][default]"></td>
                <td><input type="text" class="form-control" placeholder="comment" name="fields[__index__][comment]"></td>
                <td><a class="btn btn-sm btn-danger table-field-remove"><i class="fa fa-trash"></i> remove</a></td>
            </tr>
        </template>        
        @include('admin::form.help-block')
    </div>
</div>