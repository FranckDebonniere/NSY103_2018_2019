
public class Chiffre_Romain {

	public static void main(String[] args) {
		String [] Romain = {"I.", "V.", "X.", "L.", "C.", "D.", "M."};

		int arab = 4;
		String converstionRomain = "";
		int tampon_arab=0;

		//Traitement des miliers

		while (arab>=1000) {
			arab -=1000;
			converstionRomain += Romain[6];

		}

		//Traintement des centaines
		//Décrémentation du chiffre arabe et incrémentation de la variable tampon
		while (arab>=100 & arab>10) {
			arab -=100;
			tampon_arab+=100;
		}

		if (tampon_arab==900) {
			converstionRomain+= Romain[4]+Romain[6];
		}else if (tampon_arab>500 && tampon_arab<900) {
			converstionRomain+=Romain[5];
			while (tampon_arab>500 && tampon_arab<900) {
				tampon_arab-=100;
				converstionRomain+=Romain[4];
			} 
		}else if (tampon_arab==500) {
			converstionRomain+=Romain[5];
		}else if (tampon_arab==400) {
			converstionRomain+=Romain[4]+Romain[5];
		}else if (tampon_arab>100 && tampon_arab<400) {
			while (tampon_arab>=100 && tampon_arab<400) {
				tampon_arab-=100;
				converstionRomain+=Romain[4];
			}
		}else if (tampon_arab==100) {
			converstionRomain+=Romain[4];
		}


		//Traitement des dizaines
		//Initialisation de la variable tampon
		tampon_arab = 0;
		//Décrémentation du chiffre arabe et incrémentation de la variable tampon
		while (arab>=10) {
			arab -=10;
			tampon_arab+=10;
		}


		if (tampon_arab==90) {
			converstionRomain+= Romain[2]+Romain[4];
		}else if (tampon_arab>50 && tampon_arab<90) {
			converstionRomain+=Romain[3];
			while (tampon_arab>50 && tampon_arab<90) {
				tampon_arab-=10;
				converstionRomain+=Romain[2];
			} 
		}else if (tampon_arab==50) {
			converstionRomain+=Romain[3];
		}else if (tampon_arab==40) {
			converstionRomain+=Romain[2]+Romain[3];
		}else if (tampon_arab>10 && tampon_arab<40) {
			while (tampon_arab>=10 && tampon_arab<40) {
				tampon_arab-=10;
				converstionRomain+=Romain[2];
			}
		}else if (tampon_arab==10) {
			converstionRomain+=Romain[2];
		}


		//Traitement des numéros
		//Initialisation de la variable tampon
		tampon_arab = 0;
		//Décrémentation du chiffre arabe et incrémentation de la variable tampon
		while (arab>=1) {
			arab -=1;
			tampon_arab+=1;
		}


		if (tampon_arab==9) {
			converstionRomain+= Romain[0]+Romain[2];
		}else if (tampon_arab>5 && tampon_arab<9) {
			converstionRomain+=Romain[1];
			while (tampon_arab>5 && tampon_arab<9) {
				tampon_arab-=1;
				converstionRomain+=Romain[0];
			} 
		}else if (tampon_arab==5) {
			converstionRomain+=Romain[1];
		}else if (tampon_arab==4) {
			converstionRomain+=Romain[0]+Romain[1];
		}else if (tampon_arab>1 && tampon_arab<4) {
			while (tampon_arab>=1 && tampon_arab<4) {
				tampon_arab-=1;
				converstionRomain+=Romain[0];
			}
		}else if (tampon_arab==1) {
			converstionRomain+=Romain[0];
		}




		System.out.println(converstionRomain);

	}
}


