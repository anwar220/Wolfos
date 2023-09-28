# classes.dex

.class public final Landroid/app/search/SearchContext;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/search/SearchContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private mPackageName:Ljava/lang/String;

.field private final mResultTypes:I

.field private final mTimeoutMillis:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/search/SearchContext$1;

    invoke-direct {v0}, Landroid/app/search/SearchContext$1;-><init>()V

    sput-object v0, Landroid/app/search/SearchContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/app/search/SearchContext;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/search/SearchContext;->mResultTypes:I

    iput p2, p0, Landroid/app/search/SearchContext;->mTimeoutMillis:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/search/SearchContext;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/search/SearchContext;->mResultTypes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/search/SearchContext;->mTimeoutMillis:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchContext;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchContext;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/search/SearchContext-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/search/SearchContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchContext;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/search/SearchContext;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResultTypes()I
    .registers 2

    iget v0, p0, Landroid/app/search/SearchContext;->mResultTypes:I

    return v0
.end method

.method public getTimeoutMillis()I
    .registers 2

    iget v0, p0, Landroid/app/search/SearchContext;->mTimeoutMillis:I

    return v0
.end method

.method setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/search/SearchContext;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/search/SearchContext;->mResultTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/search/SearchContext;->mTimeoutMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/search/SearchContext;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/search/SearchContext;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
