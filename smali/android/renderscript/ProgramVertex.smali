# classes3.dex

.class public Landroid/renderscript/ProgramVertex;
.super Landroid/renderscript/Program;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramVertex$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Program;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public getInput(I)Landroid/renderscript/Element;
    .registers 4

    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    aget-object v0, v0, p1

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputCount()I
    .registers 2

    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    array-length v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
