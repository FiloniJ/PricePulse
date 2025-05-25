import React from 'react';
import Header from '../../common/Header/Header';
import AddURL from '../AddURL';
import InactiveItems from '../InactiveItems';
import { useAppSelector } from '../../store/hook';

const HeaderBlock = () => {
    const lastUpdateDate = useAppSelector(state => state.lastUpdateDate)
    const isActiveURLs = useAppSelector(state => state.isActiveURLs)

    return (
        <header className="fixed w-full z-10">
            <Header name='Парсер цен'>
            <div className="text-sm tracking-tight">
                <span>Дата последнего обновления: {lastUpdateDate}</span>
            </div>
            <div className="flex justify-center">
                <AddURL />
                <InactiveItems />
            </div>
            <span className="text-sm tracking-tight">
                {isActiveURLs ? 'Список для парсинга' : 'Отключённые из парсинга'}
            </span>
            </Header>
        </header>
    )
}

export default HeaderBlock