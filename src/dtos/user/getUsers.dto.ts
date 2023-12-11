import { UserModel } from '../../';
import z from 'zod'

export interface GetUserInputDTO{
    q: string,
    token: string
}

export type GetUserOutputDTO  = UserModel[]