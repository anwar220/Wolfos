# classes3.dex

.class public final Landroid/service/autofill/FieldClassification$Match;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FieldClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Match"
.end annotation


# instance fields
.field private final mCategoryId:Ljava/lang/String;

.field private final mScore:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmScore(Landroid/service/autofill/FieldClassification$Match;)F
    .registers 1

    iget p0, p0, Landroid/service/autofill/FieldClassification$Match;->mScore:F

    return p0
.end method

.method static bridge synthetic -$$Nest$mwriteToParcel(Landroid/service/autofill/FieldClassification$Match;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/autofill/FieldClassification$Match;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification$Match;
    .registers 1

    invoke-static {p0}, Landroid/service/autofill/FieldClassification$Match;->readFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification$Match;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/FieldClassification$Match;->mCategoryId:Ljava/lang/String;

    iput p2, p0, Landroid/service/autofill/FieldClassification$Match;->mScore:F

    return-void
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification$Match;
    .registers 4

    new-instance v0, Landroid/service/autofill/FieldClassification$Match;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    return-object v0
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    iget-object v0, p0, Landroid/service/autofill/FieldClassification$Match;->mCategoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/autofill/FieldClassification$Match;->mScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/FieldClassification$Match;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()F
    .registers 2

    iget v0, p0, Landroid/service/autofill/FieldClassification$Match;->mScore:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Match: categoryId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/FieldClassification$Match;->mCategoryId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/autofill/FieldClassification$Match;->mScore:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
