/*
* JBoss, Home of Professional Open Source
* Copyright 2005, JBoss Inc., and individual contributors as indicated
* by the @authors tag. See the copyright.txt in the distribution for a
* full listing of individual contributors.
*
* This is free software; you can redistribute it and/or modify it
* under the terms of the GNU Lesser General Public License as
* published by the Free Software Foundation; either version 2.1 of
* the License, or (at your option) any later version.
*
* This software is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
* Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public
* License along with this software; if not, write to the Free
* Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
* 02110-1301 USA, or see the FSF site: http://www.fsf.org.
*/
package org.jboss.util.propertyeditor;

import java.beans.PropertyEditorSupport;
/** A property editor for {@link java.lang.Boolean}.
 *
 * @version $Revision: 1455 $
 * @author Scott.Stark@jboss.org
 */
public class BooleanEditor extends PropertyEditorSupport
{
   private static final String[] BOOLEAN_TAGS = {"true", "false"};

   /** Map the argument text into Boolean.TRUE or Boolean.FALSE
    using Boolean.valueOf.
    */
   public void setAsText(final String text)
   {
      if (PropertyEditors.isNull(text))
      {
         setValue(null);
         return;
      }
      Object newValue = Boolean.valueOf(text);
      setValue(newValue);
   }

   /**
    @return the values {"true", "false"}
    */
   public String[] getTags()
   {
      return BOOLEAN_TAGS;
   }
}