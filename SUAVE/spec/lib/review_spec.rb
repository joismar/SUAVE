require 'rails_helper'

describe Review do
    regex_letras = /[a-zA-Z]/
    regex_numeros = /[0-9]/

    review_instance = Review.new(idEscola: "26125234",
                                nomeEscola: "ESCOLA PINHEIROS",
                                nota: 7,
                                comentario: "Escola Bacana!")

    it "Avaliação válida com todos os atributos" do
        expect(review_instance).to be_an_instance_of(Review)
    end

    it "O id da escola é válido?" do
        expect(review_instance.idEscola).not_to be_empty
        expect(review_instance.idEscola).to be_an_instance_of(String)
        expect(review_instance.idEscola).to match(regex_numeros)

    end

    it "O nome da escola é válido?" do
        expect(review_instance.nomeEscola).not_to be_empty
        expect(review_instance.nomeEscola).to be_an_instance_of(String)
        expect(review_instance.nomeEscola).to match(regex_letras)

    end

    it "A nota é válida?" do
        expect(review_instance.nota).to be_truthy
        expect(review_instance.nota).to be_an_instance_of(Integer)
    end

    it "O comentário é válido?" do
        expect(review_instance.comentario).not_to be_empty
    end
end
