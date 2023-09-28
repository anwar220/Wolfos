# classes.dex

.class public final Landroid/graphics/text/LineBreakConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreakConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mLineBreakStyle:I

.field private mLineBreakWordStyle:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    return-void
.end method


# virtual methods
.method public build()Landroid/graphics/text/LineBreakConfig;
    .registers 5

    new-instance v0, Landroid/graphics/text/LineBreakConfig;

    iget v1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    iget v2, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/text/LineBreakConfig;-><init>(IILandroid/graphics/text/LineBreakConfig-IA;)V

    return-object v0
.end method

.method public setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    return-object p0
.end method

.method public setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    return-object p0
.end method
