# classes.dex

.class Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->onSyncLost(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

.field final synthetic val$syncHandle:I


# direct methods
.method constructor <init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;I)V
    .registers 3

    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->val$syncHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->val$syncHandle:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncLost(I)V

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iget-object v1, v1, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
