# classes.dex

.class Landroid/app/smartspace/SmartspaceAction$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/SmartspaceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/smartspace/SmartspaceAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/smartspace/SmartspaceAction;
    .registers 3

    new-instance v0, Landroid/app/smartspace/SmartspaceAction;

    invoke-direct {v0, p1}, Landroid/app/smartspace/SmartspaceAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/smartspace/SmartspaceAction$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/smartspace/SmartspaceAction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/smartspace/SmartspaceAction;
    .registers 3

    new-array v0, p1, [Landroid/app/smartspace/SmartspaceAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/smartspace/SmartspaceAction$1;->newArray(I)[Landroid/app/smartspace/SmartspaceAction;

    move-result-object p1

    return-object p1
.end method
