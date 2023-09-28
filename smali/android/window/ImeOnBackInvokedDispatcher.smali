# classes4.dex

.class public Landroid/window/ImeOnBackInvokedDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ImeOnBackInvokedDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field static final RESULT_CODE_REGISTER:I = 0x0

.field static final RESULT_CODE_UNREGISTER:I = 0x1

.field static final RESULT_KEY_CALLBACK:Ljava/lang/String; = "callback"

.field static final RESULT_KEY_ID:Ljava/lang/String; = "id"

.field static final RESULT_KEY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final TAG:Ljava/lang/String; = "ImeBackDispatcher"


# instance fields
.field private final mImeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static bridge synthetic -$$Nest$mreceive(Landroid/window/ImeOnBackInvokedDispatcher;ILandroid/os/Bundle;Landroid/window/OnBackInvokedDispatcher;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/window/ImeOnBackInvokedDispatcher;->receive(ILandroid/os/Bundle;Landroid/window/OnBackInvokedDispatcher;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$2;

    invoke-direct {v0}, Landroid/window/ImeOnBackInvokedDispatcher$2;-><init>()V

    sput-object v0, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$1;

    invoke-direct {v0, p0, p1}, Landroid/window/ImeOnBackInvokedDispatcher$1;-><init>(Landroid/window/ImeOnBackInvokedDispatcher;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method private receive(ILandroid/os/Bundle;Landroid/window/OnBackInvokedDispatcher;)V
    .registers 7

    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez p1, :cond_1e

    const-string/jumbo v1, "priority"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    nop

    const-string v2, "callback"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0, p3}, Landroid/window/ImeOnBackInvokedDispatcher;->registerReceivedCallback(Landroid/window/IOnBackInvokedCallback;IILandroid/window/OnBackInvokedDispatcher;)V

    goto :goto_25

    :cond_1e
    const/4 v1, 0x1

    if-ne p1, v1, :cond_25

    invoke-direct {p0, v0, p3}, Landroid/window/ImeOnBackInvokedDispatcher;->unregisterReceivedCallback(ILandroid/window/OnBackInvokedDispatcher;)V

    goto :goto_26

    :cond_25
    :goto_25
    nop

    :goto_26
    return-void
.end method

.method private registerReceivedCallback(Landroid/window/IOnBackInvokedCallback;IILandroid/window/OnBackInvokedDispatcher;)V
    .registers 7

    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    invoke-direct {v0, p1, p3, p2}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;-><init>(Landroid/window/IOnBackInvokedCallback;II)V

    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, p2, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method private unregisterReceivedCallback(ILandroid/window/OnBackInvokedDispatcher;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    invoke-static {v2}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->-$$Nest$mgetId(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I

    move-result v3

    if-ne v3, p1, :cond_1b

    move-object v0, v2

    goto :goto_1c

    :cond_1b
    goto :goto_7

    :cond_1c
    :goto_1c
    if-nez v0, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ime callback not found. Ignoring unregisterReceivedCallback. callbackId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImeBackDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    invoke-interface {p2, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    invoke-virtual {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    invoke-virtual {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_c

    :cond_20
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;

    invoke-direct {v1, p2}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;-><init>(Landroid/window/OnBackInvokedCallback;)V

    invoke-interface {v1}, Landroid/window/IOnBackInvokedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "callback"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v2, "priority"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public switchRootView(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl;)V
    .registers 7

    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_1b
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-static {v1}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->-$$Nest$fgetmPriority(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_28
    goto :goto_6

    :cond_29
    return-void
.end method

.method public unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
