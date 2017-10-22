_guid = () ->
  s4 = () ->
    return Math.floor((1 + Math.random()) * 0x10000)
    .toString(16)
    .substring(1)
  return s4() + s4() + '-' + s4() + '-' + s4() + '-' + s4() + '-' + s4() + s4() + s4()

getLabels = (data) ->
  return data.map((item) ->
    return item.label
  )

dropdown = $req.dropdown

$env = {
  labelName: dropdown.labelName,
  options: dropdown.options,
  setSelected: (option) -> $env.selected = option
}