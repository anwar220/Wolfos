# classes3.dex

.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArray:[I

.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    invoke-virtual {p2}, Landroid/renderscript/Element;->checkValid()V

    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .registers 12

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    const/4 v1, 0x1

    if-lez v0, :cond_22

    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v2, v1, :cond_1a

    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lt v2, v1, :cond_1a

    iget-boolean v2, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v2, :cond_12

    goto :goto_22

    :cond_12
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_22
    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lez v2, :cond_33

    iget v3, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v3, v1, :cond_2b

    goto :goto_33

    :cond_2b
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    :goto_33
    iget-boolean v3, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v3, :cond_42

    if-lt v2, v1, :cond_3a

    goto :goto_42

    :cond_3a
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    :goto_42
    iget v1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    if-eqz v1, :cond_57

    if-nez v0, :cond_4f

    if-nez v3, :cond_4f

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    if-nez v0, :cond_4f

    goto :goto_57

    :cond_4f
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "YUV only supports basic 2D."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    :goto_57
    const/4 v0, 0x0

    const/4 v1, 0x3

    :goto_59
    if-ltz v1, :cond_75

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    aget v2, v2, v1

    if-eqz v2, :cond_65

    if-nez v0, :cond_65

    new-array v0, v1, [I

    :cond_65
    if-nez v2, :cond_72

    if-nez v0, :cond_6a

    goto :goto_72

    :cond_6a
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "Array dimensions must be contigous from 0."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_72
    :goto_72
    add-int/lit8 v1, v1, -0x1

    goto :goto_59

    :cond_75
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget v5, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iget v6, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iget v7, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v8, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v9, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iget v10, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v2 .. v10}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v1

    new-instance v3, Landroid/renderscript/Type;

    iget-object v4, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v3, v1, v2, v4}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iget-object v4, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iput-object v4, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iput v4, v3, Landroid/renderscript/Type;->mDimX:I

    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iput v4, v3, Landroid/renderscript/Type;->mDimY:I

    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iput v4, v3, Landroid/renderscript/Type;->mDimZ:I

    iget-boolean v4, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v4, v3, Landroid/renderscript/Type;->mDimMipmaps:Z

    iget-boolean v4, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v4, v3, Landroid/renderscript/Type;->mDimFaces:Z

    iget v4, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    iput v4, v3, Landroid/renderscript/Type;->mDimYuv:I

    iput-object v0, v3, Landroid/renderscript/Type;->mArrays:[I

    invoke-virtual {v3}, Landroid/renderscript/Type;->calcElementCount()V

    return-object v3
.end method

.method public setArray(II)Landroid/renderscript/Type$Builder;
    .registers 5

    if-ltz p1, :cond_a

    const/4 v0, 0x4

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    aput p2, v0, p1

    return-object p0

    :cond_a
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array dimension out of range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    return-object p0

    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    return-object p0

    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .registers 4

    sparse-switch p1, :sswitch_data_10

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only ImageFormat.NV21, .YV12, and .YUV_420_888 are supported.."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b
    nop

    iput p1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    return-object p0

    nop

    :sswitch_data_10
    .sparse-switch
        0x11 -> :sswitch_b
        0x23 -> :sswitch_b
        0x32315659 -> :sswitch_b
    .end sparse-switch
.end method

.method public setZ(I)Landroid/renderscript/Type$Builder;
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    return-object p0

    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
