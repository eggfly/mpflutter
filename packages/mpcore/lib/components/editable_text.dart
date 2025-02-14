part of '../mpcore.dart';

MPElement _encodeEditableText(Element element) {
  final widget = element.widget as EditableText;
  var mpWidget = widget is MPEditableText ? widget : null;
  return MPElement(
    hashCode: element.hashCode,
    flutterElement: element,
    name: 'editable_text',
    children: [],
    attributes: {
      'style': _encodeTextStyle(widget.style),
      'value': widget.controller.text,
      'placeholder': mpWidget?.placeholder,
      'placeholderStyle': mpWidget?.placeholderStyle != null
          ? _encodeTextStyle(mpWidget!.placeholderStyle!)
          : null,
      'maxLines': widget.maxLines,
      'obscureText': widget.obscureText,
      'readOnly': widget.readOnly,
      'textAlign': widget.textAlign.toString(),
      'autofocus': widget.autofocus,
      'autocorrect': widget.autocorrect,
      'enableSuggestions': widget.enableSuggestions,
      'keyboardType': widget.keyboardType.toString(),
      'onSubmitted': widget.onSubmitted != null ? element.hashCode : null,
      'onChanged': element.hashCode,
    },
  );
}
