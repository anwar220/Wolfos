# classes3.dex

.class Landroid/security/GenerateRkpKey$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/GenerateRkpKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/security/GenerateRkpKey;


# direct methods
.method constructor <init>(Landroid/security/GenerateRkpKey;)V
    .registers 2

    iput-object p1, p0, Landroid/security/GenerateRkpKey$1;->this$0:Landroid/security/GenerateRkpKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Landroid/security/GenerateRkpKey$1;->this$0:Landroid/security/GenerateRkpKey;

    invoke-static {v0}, Landroid/security/GenerateRkpKey;->-$$Nest$fgetmCountDownLatch(Landroid/security/GenerateRkpKey;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Landroid/security/GenerateRkpKey$1;->this$0:Landroid/security/GenerateRkpKey;

    invoke-static {p2}, Landroid/security/IGenerateRkpKeyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IGenerateRkpKeyService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/GenerateRkpKey;->-$$Nest$fputmBinder(Landroid/security/GenerateRkpKey;Landroid/security/IGenerateRkpKeyService;)V

    iget-object v0, p0, Landroid/security/GenerateRkpKey$1;->this$0:Landroid/security/GenerateRkpKey;

    invoke-static {v0}, Landroid/security/GenerateRkpKey;->-$$Nest$fgetmCountDownLatch(Landroid/security/GenerateRkpKey;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Landroid/security/GenerateRkpKey$1;->this$0:Landroid/security/GenerateRkpKey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/security/GenerateRkpKey;->-$$Nest$fputmBinder(Landroid/security/GenerateRkpKey;Landroid/security/IGenerateRkpKeyService;)V

    return-void
.end method
