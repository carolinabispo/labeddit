import {v4} from 'uuid'

export class IdGenerator{
    public genarate = (): string =>{
        return v4()
    }
}