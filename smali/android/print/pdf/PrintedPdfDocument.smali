# classes3.dex

.class public Landroid/print/pdf/PrintedPdfDocument;
.super Landroid/graphics/pdf/PdfDocument;


# static fields
.field private static final MILS_PER_INCH:I = 0x3e8

.field private static final POINTS_IN_INCH:I = 0x48


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mPageHeight:I

.field private final mPageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
    .registers 13

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000  # 1000.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x42900000  # 72.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v5

    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v2

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v2

    mul-float/2addr v9, v3

    float-to-int v2, v9

    new-instance v3, Landroid/graphics/Rect;

    sub-int/2addr v1, v8

    sub-int/2addr v4, v2

    invoke-direct {v3, v6, v7, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getPageContentRect()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPageHeight()I
    .registers 2

    iget v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    return v0
.end method

.method public getPageWidth()I
    .registers 2

    iget v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    return v0
.end method

.method public startPage(I)Landroid/graphics/pdf/PdfDocument$Page;
    .registers 5

    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    iget v1, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    iget v2, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    invoke-direct {v0, v1, v2, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    iget-object v1, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/print/pdf/PrintedPdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v1

    return-object v1
.end method
