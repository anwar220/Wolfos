# classes3.dex

.class Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/displayhash/DisplayHashResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->generateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;

.field final synthetic val$callback:Landroid/os/RemoteCallback;


# direct methods
.method constructor <init>(Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;Landroid/os/RemoteCallback;)V
    .registers 3

    iput-object p1, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;->this$1:Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;

    iput-object p2, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;->val$callback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayHashError(I)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DISPLAY_HASH_ERROR_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDisplayHashResult(Landroid/view/displayhash/DisplayHash;)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DISPLAY_HASH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method
