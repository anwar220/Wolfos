# classes3.dex

.class Landroid/service/autofill/DateValueSanitizer$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/DateValueSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/DateValueSanitizer;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/DateValueSanitizer;
    .registers 5

    new-instance v0, Landroid/service/autofill/DateValueSanitizer;

    const-class v1, Landroid/icu/text/DateFormat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/icu/text/DateFormat;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormat;

    invoke-direct {v0, v1}, Landroid/service/autofill/DateValueSanitizer;-><init>(Landroid/icu/text/DateFormat;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/DateValueSanitizer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/DateValueSanitizer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/DateValueSanitizer;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/DateValueSanitizer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/DateValueSanitizer$1;->newArray(I)[Landroid/service/autofill/DateValueSanitizer;

    move-result-object p1

    return-object p1
.end method
