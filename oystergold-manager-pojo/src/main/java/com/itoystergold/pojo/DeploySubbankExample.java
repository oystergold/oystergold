package com.itoystergold.pojo;

import java.util.ArrayList;
import java.util.List;

public class DeploySubbankExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DeploySubbankExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andSubNoIsNull() {
            addCriterion("SUB_NO is null");
            return (Criteria) this;
        }

        public Criteria andSubNoIsNotNull() {
            addCriterion("SUB_NO is not null");
            return (Criteria) this;
        }

        public Criteria andSubNoEqualTo(String value) {
            addCriterion("SUB_NO =", value, "subNo");
            return (Criteria) this;
        }

        public Criteria andSubNoNotEqualTo(String value) {
            addCriterion("SUB_NO <>", value, "subNo");
            return (Criteria) this;
        }

        public Criteria andSubNoGreaterThan(String value) {
            addCriterion("SUB_NO >", value, "subNo");
            return (Criteria) this;
        }

        public Criteria andSubNoGreaterThanOrEqualTo(String value) {
            addCriterion("SUB_NO >=", value, "subNo");
            return (Criteria) this;
        }

        public Criteria andSubNoLessThan(String value) {
            addCriterion("SUB_NO <", value, "subNo");
            return (Criteria) this;
        }

        public Criteria andSubNoLessThanOrEqualTo(String value) {
            addCriterion("SUB_NO <=", value, "subNo");
            return (Criteria) this;
        }

        public Criteria andSubNoLike(String value) {
            addCriterion("SUB_NO like", value, "subNo");
            return (Criteria) this;
        }

        public Criteria andSubNoNotLike(String value) {
            addCriterion("SUB_NO not like", value, "subNo");
            return (Criteria) this;
        }

        public Criteria andSubNoIn(List<String> values) {
            addCriterion("SUB_NO in", values, "subNo");
            return (Criteria) this;
        }

        public Criteria andSubNoNotIn(List<String> values) {
            addCriterion("SUB_NO not in", values, "subNo");
            return (Criteria) this;
        }

        public Criteria andSubNoBetween(String value1, String value2) {
            addCriterion("SUB_NO between", value1, value2, "subNo");
            return (Criteria) this;
        }

        public Criteria andSubNoNotBetween(String value1, String value2) {
            addCriterion("SUB_NO not between", value1, value2, "subNo");
            return (Criteria) this;
        }

        public Criteria andTenantIdIsNull() {
            addCriterion("TENANT_ID is null");
            return (Criteria) this;
        }

        public Criteria andTenantIdIsNotNull() {
            addCriterion("TENANT_ID is not null");
            return (Criteria) this;
        }

        public Criteria andTenantIdEqualTo(String value) {
            addCriterion("TENANT_ID =", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotEqualTo(String value) {
            addCriterion("TENANT_ID <>", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdGreaterThan(String value) {
            addCriterion("TENANT_ID >", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdGreaterThanOrEqualTo(String value) {
            addCriterion("TENANT_ID >=", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdLessThan(String value) {
            addCriterion("TENANT_ID <", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdLessThanOrEqualTo(String value) {
            addCriterion("TENANT_ID <=", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdLike(String value) {
            addCriterion("TENANT_ID like", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotLike(String value) {
            addCriterion("TENANT_ID not like", value, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdIn(List<String> values) {
            addCriterion("TENANT_ID in", values, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotIn(List<String> values) {
            addCriterion("TENANT_ID not in", values, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdBetween(String value1, String value2) {
            addCriterion("TENANT_ID between", value1, value2, "tenantId");
            return (Criteria) this;
        }

        public Criteria andTenantIdNotBetween(String value1, String value2) {
            addCriterion("TENANT_ID not between", value1, value2, "tenantId");
            return (Criteria) this;
        }

        public Criteria andClsbankNoIsNull() {
            addCriterion("CLSBANK_NO is null");
            return (Criteria) this;
        }

        public Criteria andClsbankNoIsNotNull() {
            addCriterion("CLSBANK_NO is not null");
            return (Criteria) this;
        }

        public Criteria andClsbankNoEqualTo(String value) {
            addCriterion("CLSBANK_NO =", value, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andClsbankNoNotEqualTo(String value) {
            addCriterion("CLSBANK_NO <>", value, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andClsbankNoGreaterThan(String value) {
            addCriterion("CLSBANK_NO >", value, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andClsbankNoGreaterThanOrEqualTo(String value) {
            addCriterion("CLSBANK_NO >=", value, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andClsbankNoLessThan(String value) {
            addCriterion("CLSBANK_NO <", value, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andClsbankNoLessThanOrEqualTo(String value) {
            addCriterion("CLSBANK_NO <=", value, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andClsbankNoLike(String value) {
            addCriterion("CLSBANK_NO like", value, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andClsbankNoNotLike(String value) {
            addCriterion("CLSBANK_NO not like", value, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andClsbankNoIn(List<String> values) {
            addCriterion("CLSBANK_NO in", values, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andClsbankNoNotIn(List<String> values) {
            addCriterion("CLSBANK_NO not in", values, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andClsbankNoBetween(String value1, String value2) {
            addCriterion("CLSBANK_NO between", value1, value2, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andClsbankNoNotBetween(String value1, String value2) {
            addCriterion("CLSBANK_NO not between", value1, value2, "clsbankNo");
            return (Criteria) this;
        }

        public Criteria andSubNameIsNull() {
            addCriterion("SUB_NAME is null");
            return (Criteria) this;
        }

        public Criteria andSubNameIsNotNull() {
            addCriterion("SUB_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andSubNameEqualTo(String value) {
            addCriterion("SUB_NAME =", value, "subName");
            return (Criteria) this;
        }

        public Criteria andSubNameNotEqualTo(String value) {
            addCriterion("SUB_NAME <>", value, "subName");
            return (Criteria) this;
        }

        public Criteria andSubNameGreaterThan(String value) {
            addCriterion("SUB_NAME >", value, "subName");
            return (Criteria) this;
        }

        public Criteria andSubNameGreaterThanOrEqualTo(String value) {
            addCriterion("SUB_NAME >=", value, "subName");
            return (Criteria) this;
        }

        public Criteria andSubNameLessThan(String value) {
            addCriterion("SUB_NAME <", value, "subName");
            return (Criteria) this;
        }

        public Criteria andSubNameLessThanOrEqualTo(String value) {
            addCriterion("SUB_NAME <=", value, "subName");
            return (Criteria) this;
        }

        public Criteria andSubNameLike(String value) {
            addCriterion("SUB_NAME like", value, "subName");
            return (Criteria) this;
        }

        public Criteria andSubNameNotLike(String value) {
            addCriterion("SUB_NAME not like", value, "subName");
            return (Criteria) this;
        }

        public Criteria andSubNameIn(List<String> values) {
            addCriterion("SUB_NAME in", values, "subName");
            return (Criteria) this;
        }

        public Criteria andSubNameNotIn(List<String> values) {
            addCriterion("SUB_NAME not in", values, "subName");
            return (Criteria) this;
        }

        public Criteria andSubNameBetween(String value1, String value2) {
            addCriterion("SUB_NAME between", value1, value2, "subName");
            return (Criteria) this;
        }

        public Criteria andSubNameNotBetween(String value1, String value2) {
            addCriterion("SUB_NAME not between", value1, value2, "subName");
            return (Criteria) this;
        }

        public Criteria andSubShortnameIsNull() {
            addCriterion("SUB_SHORTNAME is null");
            return (Criteria) this;
        }

        public Criteria andSubShortnameIsNotNull() {
            addCriterion("SUB_SHORTNAME is not null");
            return (Criteria) this;
        }

        public Criteria andSubShortnameEqualTo(String value) {
            addCriterion("SUB_SHORTNAME =", value, "subShortname");
            return (Criteria) this;
        }

        public Criteria andSubShortnameNotEqualTo(String value) {
            addCriterion("SUB_SHORTNAME <>", value, "subShortname");
            return (Criteria) this;
        }

        public Criteria andSubShortnameGreaterThan(String value) {
            addCriterion("SUB_SHORTNAME >", value, "subShortname");
            return (Criteria) this;
        }

        public Criteria andSubShortnameGreaterThanOrEqualTo(String value) {
            addCriterion("SUB_SHORTNAME >=", value, "subShortname");
            return (Criteria) this;
        }

        public Criteria andSubShortnameLessThan(String value) {
            addCriterion("SUB_SHORTNAME <", value, "subShortname");
            return (Criteria) this;
        }

        public Criteria andSubShortnameLessThanOrEqualTo(String value) {
            addCriterion("SUB_SHORTNAME <=", value, "subShortname");
            return (Criteria) this;
        }

        public Criteria andSubShortnameLike(String value) {
            addCriterion("SUB_SHORTNAME like", value, "subShortname");
            return (Criteria) this;
        }

        public Criteria andSubShortnameNotLike(String value) {
            addCriterion("SUB_SHORTNAME not like", value, "subShortname");
            return (Criteria) this;
        }

        public Criteria andSubShortnameIn(List<String> values) {
            addCriterion("SUB_SHORTNAME in", values, "subShortname");
            return (Criteria) this;
        }

        public Criteria andSubShortnameNotIn(List<String> values) {
            addCriterion("SUB_SHORTNAME not in", values, "subShortname");
            return (Criteria) this;
        }

        public Criteria andSubShortnameBetween(String value1, String value2) {
            addCriterion("SUB_SHORTNAME between", value1, value2, "subShortname");
            return (Criteria) this;
        }

        public Criteria andSubShortnameNotBetween(String value1, String value2) {
            addCriterion("SUB_SHORTNAME not between", value1, value2, "subShortname");
            return (Criteria) this;
        }

        public Criteria andCityCodeIsNull() {
            addCriterion("CITY_CODE is null");
            return (Criteria) this;
        }

        public Criteria andCityCodeIsNotNull() {
            addCriterion("CITY_CODE is not null");
            return (Criteria) this;
        }

        public Criteria andCityCodeEqualTo(String value) {
            addCriterion("CITY_CODE =", value, "cityCode");
            return (Criteria) this;
        }

        public Criteria andCityCodeNotEqualTo(String value) {
            addCriterion("CITY_CODE <>", value, "cityCode");
            return (Criteria) this;
        }

        public Criteria andCityCodeGreaterThan(String value) {
            addCriterion("CITY_CODE >", value, "cityCode");
            return (Criteria) this;
        }

        public Criteria andCityCodeGreaterThanOrEqualTo(String value) {
            addCriterion("CITY_CODE >=", value, "cityCode");
            return (Criteria) this;
        }

        public Criteria andCityCodeLessThan(String value) {
            addCriterion("CITY_CODE <", value, "cityCode");
            return (Criteria) this;
        }

        public Criteria andCityCodeLessThanOrEqualTo(String value) {
            addCriterion("CITY_CODE <=", value, "cityCode");
            return (Criteria) this;
        }

        public Criteria andCityCodeLike(String value) {
            addCriterion("CITY_CODE like", value, "cityCode");
            return (Criteria) this;
        }

        public Criteria andCityCodeNotLike(String value) {
            addCriterion("CITY_CODE not like", value, "cityCode");
            return (Criteria) this;
        }

        public Criteria andCityCodeIn(List<String> values) {
            addCriterion("CITY_CODE in", values, "cityCode");
            return (Criteria) this;
        }

        public Criteria andCityCodeNotIn(List<String> values) {
            addCriterion("CITY_CODE not in", values, "cityCode");
            return (Criteria) this;
        }

        public Criteria andCityCodeBetween(String value1, String value2) {
            addCriterion("CITY_CODE between", value1, value2, "cityCode");
            return (Criteria) this;
        }

        public Criteria andCityCodeNotBetween(String value1, String value2) {
            addCriterion("CITY_CODE not between", value1, value2, "cityCode");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("STATUS is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("STATUS is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(String value) {
            addCriterion("STATUS =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(String value) {
            addCriterion("STATUS <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(String value) {
            addCriterion("STATUS >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(String value) {
            addCriterion("STATUS >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(String value) {
            addCriterion("STATUS <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(String value) {
            addCriterion("STATUS <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLike(String value) {
            addCriterion("STATUS like", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotLike(String value) {
            addCriterion("STATUS not like", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<String> values) {
            addCriterion("STATUS in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<String> values) {
            addCriterion("STATUS not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(String value1, String value2) {
            addCriterion("STATUS between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(String value1, String value2) {
            addCriterion("STATUS not between", value1, value2, "status");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}