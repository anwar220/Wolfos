# classes4.dex

.class public final synthetic Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;->f$0:I

    iput p2, p0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 6

    iget v0, p0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;->f$0:I

    iget v1, p0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->lambda$resolveImage$1(IILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
