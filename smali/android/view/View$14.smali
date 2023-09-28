# classes3.dex

.class Landroid/view/View$14;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->setScreenAntiBurn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v0}, Landroid/view/View;->-$$Nest$fgetmOffsetRandom(Landroid/view/View;)Ljava/util/Random;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v2, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v2}, Landroid/view/View;->-$$Nest$fgetmCurOffset(Landroid/view/View;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v4}, Landroid/view/View;->-$$Nest$fgetmOffsetDirection(Landroid/view/View;)[[I

    move-result-object v4

    aget-object v4, v4, v0

    aget v4, v4, v3

    mul-int/2addr v4, v1

    add-int/2addr v2, v4

    iget-object v4, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v4}, Landroid/view/View;->-$$Nest$fgetmCurOffset(Landroid/view/View;)[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v6, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v6}, Landroid/view/View;->-$$Nest$fgetmOffsetDirection(Landroid/view/View;)[[I

    move-result-object v6

    aget-object v6, v6, v0

    aget v6, v6, v5

    mul-int/2addr v6, v1

    add-int/2addr v4, v6

    const/4 v1, 0x5

    if-ge v2, v1, :cond_e2

    const/4 v6, -0x5

    if-le v2, v6, :cond_e2

    if-ge v4, v1, :cond_e2

    if-le v4, v6, :cond_e2

    iget-object v1, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v1}, Landroid/view/View;->-$$Nest$fgetmPreOffset(Landroid/view/View;)[I

    move-result-object v1

    aget v1, v1, v3

    if-ne v1, v2, :cond_53

    iget-object v1, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v1}, Landroid/view/View;->-$$Nest$fgetmPreOffset(Landroid/view/View;)[I

    move-result-object v1

    aget v1, v1, v5

    if-eq v1, v4, :cond_e2

    :cond_53
    iget-object v1, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->dispatchOffsetForScreenAntiBurn(II)V

    iget-object v1, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v1}, Landroid/view/View;->-$$Nest$fgetmPreOffset(Landroid/view/View;)[I

    move-result-object v1

    iget-object v6, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v6}, Landroid/view/View;->-$$Nest$fgetmCurOffset(Landroid/view/View;)[I

    move-result-object v6

    aget v6, v6, v3

    aput v6, v1, v3

    iget-object v1, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v1}, Landroid/view/View;->-$$Nest$fgetmPreOffset(Landroid/view/View;)[I

    move-result-object v1

    iget-object v6, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v6}, Landroid/view/View;->-$$Nest$fgetmCurOffset(Landroid/view/View;)[I

    move-result-object v6

    aget v6, v6, v5

    aput v6, v1, v5

    iget-object v1, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v1}, Landroid/view/View;->-$$Nest$fgetmCurOffset(Landroid/view/View;)[I

    move-result-object v1

    aput v2, v1, v3

    iget-object v1, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v1}, Landroid/view/View;->-$$Nest$fgetmCurOffset(Landroid/view/View;)[I

    move-result-object v1

    aput v4, v1, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreOffset=["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v6}, Landroid/view/View;->-$$Nest$fgetmPreOffset(Landroid/view/View;)[I

    move-result-object v6

    aget v6, v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v7}, Landroid/view/View;->-$$Nest$fgetmPreOffset(Landroid/view/View;)[I

    move-result-object v7

    aget v7, v7, v5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "] CurOffset=["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v7}, Landroid/view/View;->-$$Nest$fgetmCurOffset(Landroid/view/View;)[I

    move-result-object v7

    aget v3, v7, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/View$14;->this$0:Landroid/view/View;

    invoke-static {v3}, Landroid/view/View;->-$$Nest$fgetmCurOffset(Landroid/view/View;)[I

    move-result-object v3

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AntiBurn"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    return-void
.end method
