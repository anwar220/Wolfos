# classes3.dex

.class public Landroid/renderscript/Int4;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Int4;->w:I

    iput p1, p0, Landroid/renderscript/Int4;->z:I

    iput p1, p0, Landroid/renderscript/Int4;->y:I

    iput p1, p0, Landroid/renderscript/Int4;->x:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Int4;->x:I

    iput p2, p0, Landroid/renderscript/Int4;->y:I

    iput p3, p0, Landroid/renderscript/Int4;->z:I

    iput p4, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int4;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p1, Landroid/renderscript/Int4;->y:I

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p1, Landroid/renderscript/Int4;->z:I

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p1, Landroid/renderscript/Int4;->w:I

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public static add(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static add(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)I
    .registers 5

    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    iget v2, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    iget v2, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    iget v2, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public add(Landroid/renderscript/Int4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public addAt(II)V
    .registers 5

    packed-switch p1, :pswitch_data_24

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b  #0x3
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void

    :pswitch_11  #0x2
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    return-void

    :pswitch_17  #0x1
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    return-void

    :pswitch_1d  #0x0
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d  #00000000
        :pswitch_17  #00000001
        :pswitch_11  #00000002
        :pswitch_b  #00000003
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Int4;I)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public copyTo([II)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    aput v1, p1, v0

    return-void
.end method

.method public div(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public div(Landroid/renderscript/Int4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int4;)I
    .registers 5

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public elementSum()I
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, v1

    return v0
.end method

.method public get(I)I
    .registers 4

    packed-switch p1, :pswitch_data_18

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b  #0x3
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    return v0

    :pswitch_e  #0x2
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    return v0

    :pswitch_11  #0x1
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    return v0

    :pswitch_14  #0x0
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_11  #00000001
        :pswitch_e  #00000002
        :pswitch_b  #00000003
    .end packed-switch
.end method

.method public length()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public mod(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public mod(Landroid/renderscript/Int4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public mul(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public mul(Landroid/renderscript/Int4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public negate()V
    .registers 2

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public set(Landroid/renderscript/Int4;)V
    .registers 3

    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p1, Landroid/renderscript/Int4;->y:I

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p1, Landroid/renderscript/Int4;->z:I

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p1, Landroid/renderscript/Int4;->w:I

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public setAt(II)V
    .registers 5

    packed-switch p1, :pswitch_data_18

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b  #0x3
    iput p2, p0, Landroid/renderscript/Int4;->w:I

    return-void

    :pswitch_e  #0x2
    iput p2, p0, Landroid/renderscript/Int4;->z:I

    return-void

    :pswitch_11  #0x1
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    return-void

    :pswitch_14  #0x0
    iput p2, p0, Landroid/renderscript/Int4;->x:I

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_11  #00000001
        :pswitch_e  #00000002
        :pswitch_b  #00000003
    .end packed-switch
.end method

.method public setValues(IIII)V
    .registers 5

    iput p1, p0, Landroid/renderscript/Int4;->x:I

    iput p2, p0, Landroid/renderscript/Int4;->y:I

    iput p3, p0, Landroid/renderscript/Int4;->z:I

    iput p4, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public sub(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public sub(Landroid/renderscript/Int4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method
