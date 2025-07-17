let FLAG = 0

	; (() => {
		class Person {
			firstname = ''
			lastname = ''
			spaceship = ''
			job = ''
			gender = ''
			retired = false
		}
		const han = new Person()
		han.firstname = "Han"
		han.lastname = "Solo"
		han.spaceship = "Falcon"
		if (FLAG > 0) han.designation = 'loser' // bi

		const luke = new Person()
		luke.firsname = "Luke"
		luke.lastname = "Skywalker"
		luke.gender = 'male'
		if (FLAG > 1) luke.qualities = 'none' // tri

		const leia = new Person()
		leia.firstname = "Leia"
		leia.lastname = "Organa"
		leia.job = 'queen'
		if (FLAG > 2) leia.nickname = 'you' // quadri

		const obi = new Person()
		obi.firstname = "Obi"
		obi.lastname = "Wan"
		obi.retired = true
		if (FLAG > 3) obi.location = 'stars'

		const yoda = new Person()
		yoda.lastname = "Yoda"
		yoda.spaceship = 'unknown'
		if (FLAG > 4) obi.something = 'dunnoknow'

		const jedi = new Person()
		yoda.lastname = "Jedi"
		yoda.spaceship = 'unknown'
		if (FLAG > 5) obi.something2 = 'dunnoknow'


		const people = [
			han, luke, leia, obi,
			yoda, jedi, luke, leia
		];

		const getName = person => person.lastname;
		// console.time('engine');
		for (let i = 0; i < 1000 * 1000 * 1000; i++) {
			getName(people[i & 7]);
		}
		// console.timeEnd('engine');
	})()