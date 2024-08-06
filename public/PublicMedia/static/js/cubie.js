// '#FFFF00'
// '#FFA500'
// '#FF0000'
// '#00FF00',
// '#0000FF'

class Cubie {
    constructor(x_, y_, z_, len_, colors_) {
        let offset = len_
        let x = len_ * x_ - offset;
        let y = len_ * y_ - offset;
        let z = len_ * z_ - offset;
        this.pos = createVector(x, y, z);
        this.len = len_;
        this.clrs = [];
        for (const ele of colors_) {
            switch (ele) {
                case 'W':
                    this.clrs.push('#FFFFFF')
                    break;
                case 'Y':
                    this.clrs.push('#111111')
                    break;
                case 'O':
                    this.clrs.push('#FFA500')
                    break;
                case 'R':
                    this.clrs.push('#FF0000')
                    break;
                case 'G':
                    this.clrs.push('#00FF00')
                    break;
                case 'B':
                    this.clrs.push('#0000FF')
                    break;
            }
        }
        console.log(x, y, z);
        console.log(colors_);
        console.log(this.clrs);
    }

    show() {
        stroke(0);
        strokeWeight(8);
        const r = this.len / 2;
        push();
        translate(this.pos.x, this.pos.y, this.pos.z);
        // z-fixed
        beginShape();
        fill(this.clrs[5]);
        vertex(-r, -r, -r);
        vertex(r, -r, -r);
        vertex(r, r, -r);
        vertex(-r, r, -r);
        endShape(CLOSE);

        beginShape();
        fill(this.clrs[4]);
        vertex(-r, -r, r);
        vertex(r, -r, r);
        vertex(r, r, r);
        vertex(-r, r, r);
        endShape(CLOSE);

        // y-fixed
        beginShape();
        fill(this.clrs[0]);
        vertex(-r, -r, -r);
        vertex(r, -r, -r);
        vertex(r, -r, r);
        vertex(-r, -r, r);
        endShape(CLOSE);

        beginShape();
        fill(this.clrs[1]);
        vertex(-r, r, -r);
        vertex(r, r, -r);
        vertex(r, r, r);
        vertex(-r, r, r);
        endShape(CLOSE);

        // x-fixed
        beginShape();
        fill(this.clrs[2]);
        vertex(-r, -r, -r);
        vertex(-r, r, -r);
        vertex(-r, r, r);
        vertex(-r, -r, r);
        endShape(CLOSE);

        beginShape();
        fill(this.clrs[3]);
        vertex(r, -r, -r);
        vertex(r, r, -r);
        vertex(r, r, r);
        vertex(r, -r, r);
        endShape(CLOSE);
        pop();
    }
}