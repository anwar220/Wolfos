# classes4.dex

.class Lcom/android/internal/inputmethod/InputConnectionCommandHeader$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/inputmethod/InputConnectionCommandHeader;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    invoke-direct {v1, v0}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .registers 3

    new-array v0, p1, [Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader$1;->newArray(I)[Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object p1

    return-object p1
.end method
