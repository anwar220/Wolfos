# classes.dex

.class public final Landroid/app/search/Query;
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
            "Landroid/app/search/Query;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_IME_HEIGHT:Ljava/lang/String; = "android.app.search.extra.IME_HEIGHT"


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mInput:Ljava/lang/String;

.field private final mTimestampMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/search/Query$1;

    invoke-direct {v0}, Landroid/app/search/Query$1;-><init>()V

    sput-object v0, Landroid/app/search/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/search/Query-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/search/Query;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/search/Query;-><init>(Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/search/Query;->mTimestampMillis:J

    if-eqz p4, :cond_b

    move-object v0, p4

    goto :goto_10

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_10
    iput-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

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

    iget-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_a
    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    return-wide v0
.end method

.method public getTimestampMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
