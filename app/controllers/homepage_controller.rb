#!/bin/env ruby
# encoding: utf-8
class HomepageController < ApplicationController
  def index
      @programacao = [
         {:horario => "08:00",
            :palestrante => "",
            :titulo => "Inscrições & Café da manha",
            :terreo => true,
            :descricao => "Check-in, entrega de material, crachá & stuff. 
+ Networking enquanto é servido um café da manhã para iniciar o dia."},
         {:horario => "09:00",
            :palestrante => "Lucas Mazza",
            :titulo => "Design efetivo para desenvolvedores",
            :terreo => true,
            :descricao => "Design não é uma proficiência exclusiva de alguns profissionais da web. Com conceitos simples conseguimos melhorar a usabilidade e a qualidade visual dos nossos projetos - projetos pessoais, apresentações e documentação de bibliotecas - e melhoramos nossas habilidades de design e o senso crítico para avaliar outros trabalhos. Além disso, vamos discutir sobre um processo efetivo para design na web."},
         {:horario => "09:00",
            :palestrante => "Ronaldo Ferraz",
            :titulo => "Lições em código legado Ruby e Rails",
            :terreo => false,
            :descricao => "Trabalhando com bases de código em Ruby/Rails com dezenas ou centenas de milhares de linhas de código que estão se deteriorando? Cansado de ver código que se parece com ASP em Ruby ou com abusos de meta-programação? Essa palestra mostra lições práticas aprendidas pelo palestrante em projetos Ruby de porte, incluindo seu projeto atual, mostrando como lidar com a situação e evoluir o código."},
         {:horario => "10:00",
            :palestrante => "Thais Camilo",
            :titulo => "Mantendo seus testes nos trilhos ",
            :terreo => true,
            :descricao => "A comunidade Ruby on Rails é uma grande incentivadora de testes.

            Muitas ferramentas são escritas e muitos livros são publicados sobre o assunto. Porém, como tudo em desenvolvimento de software, algumas coisas só se aprende com a prática.

            Nessa palestra serão abordadas algumas boas práticas em teste que aprendi nos últimos anos trabalhando na Hashrocket."},
         {:horario => "10:00",
            :palestrante => "Rondy",
            :titulo => "Desmistificando o Asset Pipeline",
            :terreo => false,
            :descricao => "O Asset Pipeline foi introduzido no Rails 3.1 com o intuito de facilitar o modo como servirmos assets em nosso projetos. Embora muitos não gostem da forma como o AP funciona, ele introduz conceitos estratégicos que resolvem questões de modularização e otimização de código front-end. Neste talk, veremos como tirar máximo proveito do AP, como ele se integra ao Rails e algumas alternativas de uso."},
         {:horario => "11:00",
            :palestrante => "Carlos Antonio",
            :titulo => "Desenvolvimento e integração de gems com o Rails",
            :terreo => true,
            :descricao => "O Rails possui uma arquitetura para integração de seus componentes que, embora não seja muito conhecida, é na realidade uma API pública que pode ser utilizada para integrar qualquer gem ao framework. Gems como Devise e Rspec utilizam esses recursos, eliminando assim a necessidade de monkey patches. Nesta palestra vamos entender o que essa arquitetura fornece para integrar nossas gems ao Rails."},
         {:horario => "11:00",
            :palestrante => "Marcelo Correia Pinheiro",
            :titulo => "Portando aplicações Rails para alta disponibilidade",
            :terreo => false,
            :descricao => "O Rails é excelente para desenvolver aplicações web, mas o que você faz quando o gargalo se torna uma questão de tempo? Nesta palestra falarei sobre algumas técnicas e experiências sobre como migrar aplicações Rails existentes para uma arquitetura de alta disponibilidade."},
         {:horario => "12:00",
            :palestrante => "",
            :titulo => "Almoço",
            :terreo => true,
            :descricao => ""},
         {:horario => "13:00",
            :palestrante => "Pablo Astigarraga",
            :titulo => "Modular vs Monolithic Architectures: No Holy Grails.",
            :terreo => true,
            :descricao => "One of the biggest problems in web development today is scalability. It's a big problem, and not always easy to solve, the sheer number of requests that large applications need to process is huge, and increasing every day.

               One of the most elegant and widely adopted techniques to deal with this is favoring modular architectures over monolithic ones. Having a distributed network of tiny apps makes it easier to have a robust, maintainable codebase. Adopting the Unix philosophy of doing one thing right is a topic that has been coming up on conferences and blog posts all over the world lately, and with good reason.

               But is a modular architecture always the best solution? Is then a monolithic approach \"wrong\" from the get go? Sometimes building a modular system is worth it, sometimes it just isn't. In this talk I put forward my thoughts and experiences dealing with refactoring your application into several small ones, how to build a monolithic app that can be easily split, how to approach the refactor gradually and incrementally so as not to lose the ability to deliver new features, and how to decide when it's simply not worth it."},
         {:horario => "13:00",
            :palestrante => "Urubatan",
            :titulo => "Portando uma aplicação Rails 2.x para Rails 3.2",
            :terreo => false,
            :descricao => "Existem muitas aplicações já em produção que ainda utilizam Rails 2.x e em algum momento estas aplicações precisarão ser atualizadas. Nesta palestra vou comentar todos os problemas que encontrei fazendo isto algumas vezes, no Rails e em bibliotecas bastante utilizadas, como o RSpec. E no final mostrar um exemplo simples de atualização, com um pequeno passo a passo que pode ser seguido."},
         {:horario => "14:00",
            :palestrante => "Marcos Matos",
            :titulo => "Teatro Ruby",
            :terreo => true,
            :descricao => "Todos sabemos que concorrência é uma coisa complicada. Threads! Racing Conditions! Bugs impossíveis de resolver! Mas não! Simples uso de threads não é a única forma de se obter concorrência. Esta palestra apresenta o modelo de atores e como aplicá-lo em Ruby. Com atores você pode aproveitar do poder dos computadores modernos, sem ter que manter milhares de linhas de código em C."},
         {:horario => "14:00",
            :palestrante => "Gabriel Sobrinho & Marcelo Cajueiro",
            :titulo => "SOLID",
            :terreo => false,
            :descricao => "Com ou sem experiência, todo desenvolvedor sabe que o software IRÁ ser alterado em algum momento e é nessa hora que diversos problemas ocorrem.

O SOLID é um conjunto de princípios que ajudam para que essas modificações sejam menos traumáticas possíveis através de um código conciso, desacoplado e bem arquitetado.

Na palestra iremos falar sobre todos os princípios do acrônimo SOLID explicando-os e exemplificando com código Ruby."},
         {:horario => "15:00",
            :palestrante => "Daniel Wildt",
            :titulo => "Queria empreender mas não tenho tempo.",
            :terreo => true,
            :descricao => ""},
         {:horario => "15:00",
            :palestrante => "Rafael França",
            :titulo => "Conhecendo as entranhas do Rails",
            :terreo => false,
            :descricao => "Apesar do Rails ser um dos frameworks web mais utilizados, poucos desenvolvedores conhecem como ele funciona internamente e como extendê-lo para suprir melhor necessidades específicas de aplicações. Neste talk, iremos apresentar algumas das funcionalidades avançadas do Rails como instrumentação, Active Model API e fazer um tour por algumas das novidades do Rails 4."},
         {:horario => "16:00",
            :palestrante => "",
            :titulo => "Lightning talks",
            :terreo => true,
            :descricao => ""},
         {:horario => "16:30",
            :palestrante => "",
            :titulo => "Café da Tarde",
            :terreo => true,
            :descricao => ""},
         {:horario => "17:30",
            :palestrante => "Daniel Cukier & convidados",
            :titulo => "Keynote",
            :terreo => true,
            :descricao => "A valsa do empreendedor"}
      ]
  end
end