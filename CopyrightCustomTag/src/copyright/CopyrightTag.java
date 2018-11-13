/* Imports the package needed to 
 implement the custom tag */
package copyright;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
/* Extending the TagSupport interface */
public class CopyrightTag extends
TagSupport
{
/* Invokes when the start tag of the custom tag is encountered */
public int doStartTag() throws JspException
	{
		try
		{	
/* Creating an instance of the JSPWriter 
 * for displaying the output */
	JspWriter out=pageContext.getOut();
	out.println("<BR><B>Copyright "
			+ "2000-2020 LTI.<B>");
		}
		catch (Exception ioException)
		{
System.err.println("IO Exception");
System.err.println("ioException.toString()");
}
return SKIP_BODY;
	}
public int doEndTag() throws JspException
	{
      return SKIP_PAGE;
   }
}
