/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cd.c                                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: skasmi <skasmi@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/29 17:40:28 by skasmi            #+#    #+#             */
/*   Updated: 2022/09/15 23:40:59 by skasmi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../minishell.h"

char *ft_get_cd(char *cmd)
{
    char **tab;

    tab = ft_split(cmd, ' ');
    return (tab[0]);
}

// char *ft_get_home(t_env *t)
// {
//     // t_env *tmp;
    
//     // tmp = t;
//     printf("%s\n", t->data);
//     while (t)
//     {
//         if(ft_strcmp(t->data, "HOME") == 0)
//             return(t->value);
//         else
//             // printf("%s\n", t->data); 
//             t = t->next;
//     }
//     return (NULL);
// }

char *ft_get_path(char *cmd)
{
    int i;
    int j;
    char *path = NULL; 
    char **tab;

    i = 0;
    j = 0;
    path = (char *)malloc(sizeof(char) * ft_strlen(cmd));
    if (!path)
        return (NULL);
    tab = ft_split(cmd, ' ');    
    if (ft_strcmp(tab[0], "cd") == 0)
        ft_strcpy(path, tab[1]);
    // printf("%d\n", ft_strcmp(tab[1], ""));
    // else if (ft_strcmp(tab[1], "") == -1)
        
    return (path);
}

void    ft_cd(char *cmd)
{
    if (!cmd)
        return ; 
    char *path = ft_get_path(cmd);
    if (chdir(path) == 0)
        return;
    perror(ft_get_path(cmd));
}

// int main()
// {
//     t_env *t = NULL;
//     printf("[%s]\n", ft_get_home(t));
//     return (0);
// }