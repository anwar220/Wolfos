# classes.dex

.class public Landroid/graphics/text/LineBreaker$ParagraphConstraints;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParagraphConstraints"
.end annotation


# instance fields
.field private mDefaultTabStop:F

.field private mFirstWidth:F

.field private mFirstWidthLineCount:I

.field private mVariableTabStops:[F

.field private mWidth:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmDefaultTabStop(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F
    .registers 1

    iget p0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mDefaultTabStop:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFirstWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F
    .registers 1

    iget p0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFirstWidthLineCount(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)I
    .registers 1

    iget p0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidthLineCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVariableTabStops(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)[F
    .registers 1

    iget-object p0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mVariableTabStops:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F
    .registers 1

    iget p0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mWidth:F

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mWidth:F

    iput v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidth:F

    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidthLineCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mVariableTabStops:[F

    iput v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mDefaultTabStop:F

    return-void
.end method


# virtual methods
.method public getDefaultTabStop()F
    .registers 2

    iget v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mDefaultTabStop:F

    return v0
.end method

.method public getFirstWidth()F
    .registers 2

    iget v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidth:F

    return v0
.end method

.method public getFirstWidthLineCount()I
    .registers 2

    iget v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidthLineCount:I

    return v0
.end method

.method public getTabStops()[F
    .registers 2

    iget-object v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mVariableTabStops:[F

    return-object v0
.end method

.method public getWidth()F
    .registers 2

    iget v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mWidth:F

    return v0
.end method

.method public setIndent(FI)V
    .registers 3

    iput p1, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidth:F

    iput p2, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidthLineCount:I

    return-void
.end method

.method public setTabStops([FF)V
    .registers 3

    iput-object p1, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mVariableTabStops:[F

    iput p2, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mDefaultTabStop:F

    return-void
.end method

.method public setWidth(F)V
    .registers 2

    iput p1, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mWidth:F

    return-void
.end method
