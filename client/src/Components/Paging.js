import React, { useEffect } from 'react'
import Pagination from 'react-js-pagination'
import './Paging.css'


const Paging = ({ page, count, handleChangePage, postPerPage }) => {
    
    return (
        <div>
            <Pagination
                activePage={page}
                itemsCountPerPage={postPerPage}
                totalItemsCount={count}
                pageRangeDisplayed={5}
                prevPageText={"<"}
                nextPageText={">"}
                onChange={handleChangePage}
            />
        </div>
    )
}
// react-js-pagination 라이브러리 활용해서 Paging 컴포넌트로 페이지네이션 구현하고자 합니다 
// activePage : 현재 page
// itemsCountPerPage : 한 page 당 보여줄 아이템의 개수
// totalItemsCount : 전체 아이템의 개수입니다 여기서 count = products.length로 전체 아이템의 개수를 표현했습니다
// pageRangeDisplayed : 페이지 바에서 한번에 보이는 page의 개수입니다 
// 여기선 5개로 현재 page에 따라 1,2,3,4,5 / 2,3,4,5,6 / 5,6,7,8,9 이렇게 보이도록 정했습니다
// prevPageText, nextPageText : 이전페이지, 다음페이지 뭘로 나타낼거냐는 항목
// onChange : page 값의 변화를 뭘로 핸들링할 거냐는 항목입니다 handleChangePage 함수내용은 setPage로 별거 없습니다

export default Paging;