# classes3.dex

.class Landroid/service/autofill/RegexValidator$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/RegexValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/RegexValidator;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/RegexValidator;
    .registers 6

    new-instance v0, Landroid/service/autofill/RegexValidator;

    const-class v1, Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    const-class v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Ljava/util/regex/Pattern;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-direct {v0, v1, v2}, Landroid/service/autofill/RegexValidator;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/RegexValidator$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/RegexValidator;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/RegexValidator;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/RegexValidator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/RegexValidator$1;->newArray(I)[Landroid/service/autofill/RegexValidator;

    move-result-object p1

    return-object p1
.end method
