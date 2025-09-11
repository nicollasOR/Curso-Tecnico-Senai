

const elementForm = document.getElementById('form-tarefa'); // armazena o form

const elementTitulo = document.querySelector('#titulo'); // armazena o título da tarefa (input)
const elementFiltro = document.querySelector('#filtros-status'); // armazena o filtro-status
const elementFiltroBusca = document.querySelector('#filtro-busca'); // armazena o filtro-busca
const elementoLista = document.querySelector('#Lista-tarefas'); // armazena a lista
const elementoVazio = document.querySelector('#vazio'); // armazena o texto que aparece quando a lista está vazia

let tarefas = [
    { id: 1, titulo: 'Estudar DOM', status: 'pendente' },
    { id: 2, titulo: 'Criar To-do-Lista', status: 'andamento' },
    { id: 3, titulo: 'Praticar JavaScript', status: 'concluida' }
]; // Lista de tarefas inicial

// Adiciona um ouvinte para o evento de submit do formulário
elementForm.addEventListener('submit', function(e) {
    e.preventDefault(); // impede que a página seja recarregada

    const titulo = elementTitulo.value.trim(); // remove espaços em branco
    console.log('Título:', titulo);

    if (!titulo) return;

    const nova = {
        id: Date.now(), // ID único baseado no timestamp atual
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
    const termo = elementFiltroBusca.value.toLowerCase();
    console.log(`termo digitado em minusculo: `, termo)
    //valor selecionado no filtro de status

    const filtro = elementFiltro.value;
    console.log(`filtro de status: `, filtro)
}