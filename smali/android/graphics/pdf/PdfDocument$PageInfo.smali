# classes.dex

.class public final Landroid/graphics/pdf/PdfDocument$PageInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
    }
.end annotation


# instance fields
.field private mContentRect:Landroid/graphics/Rect;

.field private mPageHeight:I

.field private mPageNumber:I

.field private mPageWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPageHeight(Landroid/graphics/pdf/PdfDocument$PageInfo;)I
    .registers 1

    iget p0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPageWidth(Landroid/graphics/pdf/PdfDocument$PageInfo;)I
    .registers 1

    iget p0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPageHeight(Landroid/graphics/pdf/PdfDocument$PageInfo;I)V
    .registers 2

    iput p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPageNumber(Landroid/graphics/pdf/PdfDocument$PageInfo;I)V
    .registers 2

    iput p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageNumber:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPageWidth(Landroid/graphics/pdf/PdfDocument$PageInfo;I)V
    .registers 2

    iput p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/pdf/PdfDocument$PageInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument$PageInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentRect()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPageHeight()I
    .registers 2

    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I

    return v0
.end method

.method public getPageNumber()I
    .registers 2

    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageNumber:I

    return v0
.end method

.method public getPageWidth()I
    .registers 2

    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I

    return v0
.end method
