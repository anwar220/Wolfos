# classes3.dex

.class Landroid/security/AppUriAuthenticationPolicy$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/AppUriAuthenticationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/AppUriAuthenticationPolicy;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/AppUriAuthenticationPolicy;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Landroid/security/UrisToAliases;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    new-instance v1, Landroid/security/AppUriAuthenticationPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/security/AppUriAuthenticationPolicy;-><init>(Ljava/util/Map;Landroid/security/AppUriAuthenticationPolicy-IA;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/security/AppUriAuthenticationPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/AppUriAuthenticationPolicy;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/security/AppUriAuthenticationPolicy;
    .registers 3

    new-array v0, p1, [Landroid/security/AppUriAuthenticationPolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/security/AppUriAuthenticationPolicy$1;->newArray(I)[Landroid/security/AppUriAuthenticationPolicy;

    move-result-object p1

    return-object p1
.end method
