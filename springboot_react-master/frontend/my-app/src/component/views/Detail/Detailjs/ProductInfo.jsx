import React from 'react'
import { makeStyles } from '@material-ui/core/styles';
import {Form} from 'antd';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableContainer from '@material-ui/core/TableContainer';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';

const useStyles = makeStyles({
    table: {
        minWidth: 350,
        width: 400
    },
});

function ProductInfo() {
    const classes = useStyles();
    return(
        <div>
            <Form>
                <br />
                <br />
                <TableContainer component={Paper}>
                    <Table className={classes.table} size="small" aria-label="a dense table">
                        <TableBody>
                            <TableRow>
                                <TableCell>주소</TableCell>
                                <TableCell>서울특별시 성동구 뚝섬로15길 27 1F</TableCell>
                            </TableRow>
                            <TableRow>
                                <TableCell>전화번호</TableCell>
                                <TableCell>010-2702-1496</TableCell>
                            </TableRow>
                            <TableRow>
                                <TableCell>음식종류</TableCell>
                                <TableCell>이탈리안</TableCell>
                            </TableRow>
                            <TableRow>
                                <TableCell>가격대</TableCell>
                                <TableCell>만원-2만원</TableCell>
                            </TableRow>
                            <TableRow>
                                <TableCell>주차</TableCell>
                                <TableCell>주차공간없음</TableCell>
                            </TableRow>
                            <TableRow>
                                <TableCell>영업시간</TableCell>
                                <TableCell>17:00-24:00</TableCell>
                            </TableRow>
                            <TableRow>
                                <TableCell>마지막주문</TableCell>
                                <TableCell>23:00</TableCell>
                            </TableRow>
                            <TableRow>
                                <TableCell>휴일</TableCell>
                                <TableCell>일,월</TableCell>
                            </TableRow>
                            <TableRow>
                                <TableCell>웹 사이트</TableCell>
                                <TableCell>식당 홈페이지로 가기</TableCell>
                            </TableRow>
                            <TableRow>
                                <TableCell>메뉴</TableCell>
                                <TableCell>메뉴 사진 들어가야함</TableCell>
                            </TableRow>
                        </TableBody>
                    </Table>
                </TableContainer>
            </Form>
        </div>
    )
}

export default ProductInfo