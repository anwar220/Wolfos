# classes2.dex

.class public final Landroid/hardware/input/VirtualMouseScrollEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualMouseScrollEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mXAxisMovement:F

.field private mYAxisMovement:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/input/VirtualMouseScrollEvent;
    .registers 5

    new-instance v0, Landroid/hardware/input/VirtualMouseScrollEvent;

    iget v1, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mXAxisMovement:F

    iget v2, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mYAxisMovement:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/input/VirtualMouseScrollEvent;-><init>(FFLandroid/hardware/input/VirtualMouseScrollEvent-IA;)V

    return-object v0
.end method

.method public setXAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;
    .registers 5

    const/high16 v0, -0x40800000  # -1.0f

    const/high16 v1, 0x3f800000  # 1.0f

    const-string v2, "xAxisMovement"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mXAxisMovement:F

    return-object p0
.end method

.method public setYAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;
    .registers 5

    const/high16 v0, -0x40800000  # -1.0f

    const/high16 v1, 0x3f800000  # 1.0f

    const-string v2, "yAxisMovement"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mYAxisMovement:F

    return-object p0
.end method
