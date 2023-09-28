# classes.dex

.class public final Landroid/content/integrity/CompoundFormula;
.super Landroid/content/integrity/IntegrityFormula;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/CompoundFormula$Connector;
    }
.end annotation


# static fields
.field public static final AND:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/CompoundFormula;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOT:I = 0x2

.field public static final OR:I = 0x1


# instance fields
.field private final mConnector:I

.field private final mFormulas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/integrity/IntegrityFormula;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/integrity/CompoundFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/CompoundFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/CompoundFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/integrity/IntegrityFormula;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/integrity/IntegrityFormula;-><init>()V

    nop

    invoke-static {p1}, Landroid/content/integrity/CompoundFormula;->isValidConnector(I)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Unknown connector: %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p2}, Landroid/content/integrity/CompoundFormula;->validateFormulas(ILjava/util/List;)V

    iput p1, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Landroid/content/integrity/IntegrityFormula;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_13

    move v3, v2

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "Must have non-negative length. Got %d"

    invoke-static {v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_37

    iget-object v2, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-static {p1}, Landroid/content/integrity/IntegrityFormula;->readFromParcel(Landroid/os/Parcel;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_37
    iget v1, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    iget-object v2, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/content/integrity/CompoundFormula;->validateFormulas(ILjava/util/List;)V

    return-void
.end method

.method private static connectorToString(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown connector "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x2
    const-string v0, "NOT"

    return-object v0

    :pswitch_1f  #0x1
    const-string v0, "OR"

    return-object v0

    :pswitch_22  #0x0
    const-string v0, "AND"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_1f  #00000001
        :pswitch_1c  #00000002
    .end packed-switch
.end method

.method private static isValidConnector(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method

.method static synthetic lambda$isAppCertificateFormula$2(Landroid/content/integrity/IntegrityFormula;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->isAppCertificateFormula()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isAppCertificateLineageFormula$3(Landroid/content/integrity/IntegrityFormula;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->isAppCertificateLineageFormula()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isInstallerFormula$4(Landroid/content/integrity/IntegrityFormula;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->isInstallerFormula()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$matches$0(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/IntegrityFormula;)Z
    .registers 3

    invoke-virtual {p1, p0}, Landroid/content/integrity/IntegrityFormula;->matches(Landroid/content/integrity/AppInstallMetadata;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$matches$1(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/IntegrityFormula;)Z
    .registers 3

    invoke-virtual {p1, p0}, Landroid/content/integrity/IntegrityFormula;->matches(Landroid/content/integrity/AppInstallMetadata;)Z

    move-result v0

    return v0
.end method

.method private static validateFormulas(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/integrity/IntegrityFormula;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_38

    goto :goto_37

    :pswitch_6  #0x2
    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_f

    move v2, v1

    goto :goto_10

    :cond_f
    move v2, v0

    :goto_10
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/content/integrity/CompoundFormula;->connectorToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Connector %s must have 1 formula only"

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_37

    :pswitch_1e  #0x0, 0x1
    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_28

    move v2, v1

    goto :goto_29

    :cond_28
    move v2, v0

    :goto_29
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/content/integrity/CompoundFormula;->connectorToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Connector %s must have at least 2 formulas"

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    nop

    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_1e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/CompoundFormula;

    iget v3, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    iget v4, v2, Landroid/content/integrity/CompoundFormula;->mConnector:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    iget-object v4, v2, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    :cond_28
    :goto_28
    return v1
.end method

.method public getConnector()I
    .registers 2

    iget v0, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    return v0
.end method

.method public getFormulas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/integrity/IntegrityFormula;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAppCertificateFormula()Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isAppCertificateLineageFormula()Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isInstallerFormula()Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public matches(Landroid/content/integrity/AppInstallMetadata;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getConnector()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown connector "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getConnector()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24  #0x2
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/integrity/IntegrityFormula;

    invoke-virtual {v0, p1}, Landroid/content/integrity/IntegrityFormula;->matches(Landroid/content/integrity/AppInstallMetadata;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_36  #0x1
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda1;-><init>(Landroid/content/integrity/AppInstallMetadata;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0

    :pswitch_48  #0x0
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda0;-><init>(Landroid/content/integrity/AppInstallMetadata;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_36  #00000001
        :pswitch_24  #00000002
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_32

    new-array v1, v3, [Ljava/lang/Object;

    iget v3, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    invoke-static {v3}, Landroid/content/integrity/CompoundFormula;->connectorToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "%s "

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_32
    const/4 v1, 0x0

    :goto_33
    iget-object v4, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_62

    if-lez v1, :cond_50

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    invoke-static {v5}, Landroid/content/integrity/CompoundFormula;->connectorToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, " %s "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v4, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/integrity/IntegrityFormula;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_62
    :goto_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    invoke-static {v1, p1, p2}, Landroid/content/integrity/IntegrityFormula;->writeToParcel(Landroid/content/integrity/IntegrityFormula;Landroid/os/Parcel;I)V

    goto :goto_14

    :cond_24
    return-void
.end method
