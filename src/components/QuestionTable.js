import React from 'react';

const QuestionTable = ({ questions }) => {
  return (
    <table class="table table-striped table-dark">
      <thead>
        <tr>
          <th>ID</th>
          <th>Text</th>
          <th>Choices</th>
          <th>Answer</th>
          <th>Topic</th>
        </tr>
      </thead>
      <tbody>
        {questions.map((question) => (
          <tr key={question.id}>
            <td>{question.id}</td>
            <td>{question.text}</td>
            <td>{question.choices.join(', ')}</td>
            <td>{question.answer}</td>
            <td>{question.topic}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default QuestionTable;