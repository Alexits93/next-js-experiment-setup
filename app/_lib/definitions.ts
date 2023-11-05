export type User = {
	id: number;
	avatar: string;
	first_name: string;
	last_name: string;
	role_id: number;
};

export type Article = {
	id: number;
	user_id: number;
	title: string;
	text: string;
	categories: string[];
};

export type Category = {
	id: number;
	name: string;
};
