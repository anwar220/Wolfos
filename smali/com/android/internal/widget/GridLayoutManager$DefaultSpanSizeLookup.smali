# classes4.dex

.class public final Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;
.super Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(II)I
    .registers 4

    rem-int v0, p1, p2

    return v0
.end method

.method public getSpanSize(I)I
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
