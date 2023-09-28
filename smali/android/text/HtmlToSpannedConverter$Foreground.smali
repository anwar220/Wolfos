# classes3.dex

.class Landroid/text/HtmlToSpannedConverter$Foreground;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Foreground"
.end annotation


# instance fields
.field private mForegroundColor:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmForegroundColor(Landroid/text/HtmlToSpannedConverter$Foreground;)I
    .registers 1

    iget p0, p0, Landroid/text/HtmlToSpannedConverter$Foreground;->mForegroundColor:I

    return p0
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Foreground;->mForegroundColor:I

    return-void
.end method
