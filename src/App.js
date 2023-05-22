import React, { useState, useEffect } from 'react';
import QuestionTable from './components/QuestionTable';

function App() {
  const [questions, setQuestions] = useState([]);

  useEffect(() => {
    fetch('http://localhost:8080/json')
      .then((response) => response.json())
      .then((data) => setQuestions(data));
  }, []);

  return (
    <div>
      <h1>List of Questions</h1>
      <QuestionTable questions={questions} />
    </div>
  );
}

export default App;