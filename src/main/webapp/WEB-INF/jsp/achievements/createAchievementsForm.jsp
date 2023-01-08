<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="achievements">
    <h2>
        New Achievement
    </h2>
    <form:form modelAttribute="achievement" class="form-horizontal" id="add-achievement-form">
        <div class="form-group has-feedback">
            <petclinic:inputField label="Title" name="title"/>
            <petclinic:selectField name="achievementType" label="AchievementType" names="${achievementtypes}" size="3"/>
            <petclinic:inputField label="Number" name="number"/>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">            

            	<button class="btn btn-default" type="submit">Add Achievement</button>                  
                
            </div>
        </div>
    </form:form>
</petclinic:layout>
