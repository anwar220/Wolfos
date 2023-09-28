# classes3.dex

.class public final Landroid/renderscript/ScriptIntrinsic3DLUT;
.super Landroid/renderscript/ScriptIntrinsic;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mElement:Landroid/renderscript/Element;

.field private mLUT:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p4, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/renderscript/Element;

    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsic3DLUT;
    .registers 6

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0, v1}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Landroid/renderscript/ScriptIntrinsic3DLUT;

    invoke-direct {v2, v0, v1, p0, p1}, Landroid/renderscript/ScriptIntrinsic3DLUT;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v2

    :cond_1a
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Element must be compatible with uchar4."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsic3DLUT;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setLUT(Landroid/renderscript/Allocation;)V
    .registers 5

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/renderscript/ScriptIntrinsic3DLUT;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void

    :cond_1d
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "LUT element type must match."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "LUT must be 3d."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method