{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_fr;

{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
uses
 mseconsts;
 
implementation
uses
 msetypes{msestrings},sysutils,mseformatstr;
 
const 
extendedconst: extendedaty =
 (
'fr',
'Effacer le fichier sélectionné ?',
'Effacer les %s fichiers sélectionnés ?'
); 

 modalresulttext: defaultmodalresulttextty =
 (
'',
'',
'',
'',
'',
'',
'',
'&Annuler',
'&Arrêter',
'&Valider',
'&Oui',
'&Non',
'&Tout',
'Oui &tout',
'A&ucun',
'&Ignorer',
'&Passer',
'Passer &tout',
'Co&ntinuer'
);

 modalresulttextnoshortcut: defaultmodalresulttextty =
 (
'',
'',
'',
'',
'',
'',
'',
'Annuler',
'Arrêter',
'Valider',
'Oui',
'Non',
'Tout',
'Oui tout',
'Aucun',
'Ignorer',
'Passer',
'Passer tout',
'Continuer'
 );

 stockcaption: stockcaptionaty = (
'',
'est invalide',
'Erreur de format',
'Valeur requise',
'Erreur',
'Min.',
'Max.',
'Erreur de rang',
'&Défaire',
'&Refaire',
'&Copier',
'C&ouper',
'Co&ller',
'&Sélectionner tout',
'&Insérer ligne',
'&Ajouter ligne',
'&Supprimer ligne',
'Ré&pertoire',
'&Racine',
'&Remonter',
'&Nouveau répertoire',
'N&om',
'&Afficher fichiers cachés',
'&Filtre',
'Sauver',
'Ouvrir',
'Nom',
'Créer un nouveau répertoire',
'Arrière',
'Avant',
'Dessus',
'Fichier',
'existe, Remplacer ?',
'modifié. Enregistrer ?',
'AVERTISSEMENT',
'ERREUR',
'Exception',
'Système',
'n’existe pas',
'MOT DE PASSE',
'Entrer le mot de passe',
'Mot de passe invalide!',
'Impossible de lire le répertoire',
'Format graphique non supporté',
'Erreur de format graphique',
'Bitmap MS',
'Icone MS',
'Image JPEG',
'Image PNG',
'Image XPM',
'Image PNM',
'Image TARGA',
'Image TIFF',
'Tout',
'Confirmer',
'Effacer l’enregistrement ?',
'Copier l’enregistrement ?',
'Fermer page',
'Premier',
'Précédent',
'Suivant',
'Dernier',
'Ajouter',
'Supprimer',
'Éditer',
'Poster',
'Annuler',
'Rafraîchir',
'Édition Filtre',
'Édition Filtre Minimum',
'Édition Filtre Maximum',
'Réinitialiser le filtre',
'Filtre actif',
'Rechercher',
'Édition automatique',
'Copier l’enregistrement',
'Dialogue',
'Insérer',
'Copier',
'Coller',
'Insérer ligne',
'Ajouter ligne',
'Supprimer ligne',
'Défaire',
'Refaire',
'Couper',
'Sélectionner tout',
'Filtre inactif',
'Portrait',
'Paysage',
'Supprimer ligne ?',
'lignes sélectionnées ?',
'Seulement un élément',
'Copier cellules',
'Coller cellules',
'Fermer',
'Maximiser',
'Normaliser',
'Minimiser',
'Taille fixe',
'Flottant',
'Rester en avant',
'Rester en arrière',
'Bloquer les descendants',
'Ne pas bloquer',
'Entrée',
'Boutton',
'Allumé',
'Éteint',
'Bord gauche',
'Bord haut',
'Bord droit',
'Bord bas',
'Début du texte',
'Fin du texte',
'Mode entrée',
'Écraser',
'Détruit',
'Copieé',
'Inseré',
'Collé',
'Retiré',
'Fenètre activée',
'Menu',
'Début du fichier',
'Fin du fichier',
'Sortie voix',
'Répéter',
'Première colonne',
'Première ligne',
'Dèrnière colonne',
'Dèrnière ligne',
'Sélection',
'Chemin de speak',
'Désactiver le boutton',
'Premier champ',
'Dèrnier champ',
'Premier élement',
'Dèrnier élement',
'Plus lent',
'Plus rapide',
'Fenètre',
'Aire',
'Aire activée',
'Volume moins',
'Volume plus',
'Annuler speech'
);

function delete_n_selected_rows(const params: array of const): msestring;
begin
 with params[0] do begin
  if vinteger = 1 then begin
   result:= extendedconst[ex_del_row_selected];
  end
  else begin
   result := StringReplace(extendedconst[ex_del_rows_selected], #37#115, inttostrmse(vinteger), [rfReplaceAll]);
  end;
 end;
end;

const
 textgenerator: defaultgeneratortextty = (
              {$ifdef FPC}@{$endif}delete_n_selected_rows
                                     );
initialization
 registerlangconsts(extendedconst[ex_lang],@stockcaption,@modalresulttext, 
        @modalresulttextnoshortcut,@textgenerator);
                               
end.
