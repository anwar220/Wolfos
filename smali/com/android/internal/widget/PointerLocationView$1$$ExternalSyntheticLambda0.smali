# classes4.dex

.class public final synthetic Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/PointerLocationView$1;

.field public final synthetic f$1:Landroid/graphics/Region;

.field public final synthetic f$2:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/PointerLocationView$1;Landroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/PointerLocationView$1;

    iput-object p2, p0, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Region;

    iput-object p3, p0, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/PointerLocationView$1;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$1;->lambda$onSystemGestureExclusionChanged$0$com-android-internal-widget-PointerLocationView$1(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method
