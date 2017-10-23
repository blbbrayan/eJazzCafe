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

if(dropdown)
  $env = {
    labelName: dropdown.labelName,
    options: dropdown.options,
    setSelected: (option) -> $env.selected = option
  }
else
  $env = {
    labelName: "",
    options: [],
    setSelected: (option) -> $env.selected = option
  }

$env.loaded = true

console.log('dropdown', $env);

init = () ->
  a = goat.getUnder($tag, 'a')[0]
  ul = goat.getUnder($tag, 'ul')[0]
  guid = _guid()
  a.dataset.activates = guid
  ul.id = guid
  console.log('init', $env, $req)
  $('.dropdown-button').dropdown()

#setTimeout(init, 1000)