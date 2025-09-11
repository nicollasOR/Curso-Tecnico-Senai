

const elementForm = document.getElementById('form-tarefa'); // armazena o form

const elementTitulo = document.querySelector('#titulo'); // armazena o título da tarefa (input)
const elementFiltro = document.querySelector('#filtro-status'); // armazena o filtro-status
const elementFiltroBusca = document.querySelector('#filtro-busca'); // armazena o filtro-busca
const elementoLista = document.querySelector('#lista-tarefas'); // armazena a lista
const elementoVazio = document.querySelector('#vazio'); // armazena o texto que aparece quando a lista está vazia

let tarefas = [
    { id: 1, titulo: 'Estudar DOM', status: 'pendente' },
    { id: 2, titulo: 'Criar To-do-Lista', status: 'andamento' },
    { id: 3, titulo: 'Praticar JavaScript', status: 'concluida' }
]; // Lista de tarefas inicial

// Adiciona um ouvinte para o evento de submit do formumlário(semelhante a um while)
elementForm.addEventListener('submit', function(e) {
    e.preventDefault(); // impede que a página seja recarregada

    const titulo = elementTitulo.value.trim(); // remove espaços em branco
    console.log('Título:', titulo);

    if (!titulo) return;

    const nova = {
        id: Date.now(), // ID baseado no timestamp atual
        titulo: titulo,
        status: 'pendente' // status padrão
    };

    tarefas.push(nova); // adiciona nova tarefa ao array
    console.log(tarefas);

    //!Limpa o campo de texto
    elementTitulo.value = ``

    //chama a funcao render() para atualizar a lista de tarefas exibida na tela
    render();

});


function render() {
    //termo digitado na busca - deixar em minusculo
    const termo = elementFiltroBusca.value.toLowerCase()
    console.log(`termo digitado em minusculo: `, termo)
    //valor selecionado no filtro de status

    const filtro = elementFiltro.value;
    console.log(`filtro de status: `, filtro)
// aplica filtros na tela de busca
    const filtradas = tarefas.filter(function (t){
             // if(filtro == todas)
             //aceita qualquer status;
             //else
             // compara com t.status
    const okStatus = filtro === `todas`? true : t.status === filtro;
    //* Se houver um termo, verifica se titulo contem esse termo
    // true == retornar a lista completa
    const verificaTermo = termo ? t.titulo.toLowerCase().includes(termo) : true;

    return okStatus && verificaTermo
    })
    // console.log(filtradas);

  //limpar a lista antes de redesenhar
   elementoLista.innerHTML = `ni`

   //cria elementos da lista para cada tarefa filtrada
   filtradas.forEach(function(t){

    /*
    <li class="tarefa {status}" data-id={id}>  </li>
    */
    const li = document.createElement(`li`)
    // classs = `tarefa pendente`
    li.className = `tarefa ` + t.status;
    li.dataset.id = t.id;
    
    //h3 da tarefa
    const h3 = document.createElemente(`h3`)
    h3.textContent = t.titulo; // <h3> Aula Javascripto </h3>
    

    // caixinha de acoes que armzena (checkobox, select, botao remover)
    const acoes = document.createElement(`div`)
    acoes.className = `acao`

    //checkbox: concluido/pendente
    const check = document.createElement(`input`)
    check.type = `checkbox`
    check.checked = t.status === `concluida` 

   })
    //percorre por todo o array (forEach)
}
