/*
 * Copyright (c) 2017 Jeremy Meltingtallow
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

package jasper.constraint;

//stubbed out to be complete not tested

import jasper.Variable;
import jasper.Strength;
import jasper.Expression;

class StayConstraint extends AbstractConstraint
{
    public function new(cv :Variable, ?_strength :Strength, ?weight :Null<Float>) : Void
    {
        var strength = (_strength == null)
            ? Strength.STRONG
            : _strength;

        super(strength, weight);
        this.variable = cv;
        // this.expression = new Expression(cv, -1, cv.value);
        this.isStay = true;
    }

    override public function toString() : String
    {
        return "stay:" + super.toString();
    }   
}