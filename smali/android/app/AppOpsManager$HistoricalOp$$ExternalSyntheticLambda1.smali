# classes.dex

.class public final synthetic Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/app/AppOpsManager$HistoricalOp;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AppOpsManager$HistoricalOp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;->f$0:Landroid/app/AppOpsManager$HistoricalOp;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;->f$0:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-static {v0}, Landroid/app/AppOpsManager$HistoricalOp;->$r8$lambda$X3SR0gwvndg4V3R8EETJBbVxjAo(Landroid/app/AppOpsManager$HistoricalOp;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    return-object v0
.end method
