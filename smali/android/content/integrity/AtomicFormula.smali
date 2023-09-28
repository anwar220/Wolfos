# classes.dex

.class public abstract Landroid/content/integrity/AtomicFormula;
.super Landroid/content/integrity/IntegrityFormula;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;,
        Landroid/content/integrity/AtomicFormula$StringAtomicFormula;,
        Landroid/content/integrity/AtomicFormula$LongAtomicFormula;,
        Landroid/content/integrity/AtomicFormula$Operator;,
        Landroid/content/integrity/AtomicFormula$Key;
    }
.end annotation


# static fields
.field public static final APP_CERTIFICATE:I = 0x1

.field public static final APP_CERTIFICATE_LINEAGE:I = 0x8

.field public static final EQ:I = 0x0

.field public static final GT:I = 0x1

.field public static final GTE:I = 0x2

.field public static final INSTALLER_CERTIFICATE:I = 0x3

.field public static final INSTALLER_NAME:I = 0x2

.field public static final PACKAGE_NAME:I = 0x0

.field public static final PRE_INSTALLED:I = 0x5

.field public static final STAMP_CERTIFICATE_HASH:I = 0x7

.field public static final STAMP_TRUSTED:I = 0x6

.field public static final VERSION_CODE:I = 0x4


# instance fields
.field private final mKey:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Landroid/content/integrity/IntegrityFormula;-><init>()V

    invoke-static {p1}, Landroid/content/integrity/AtomicFormula;->isValidKey(I)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Unknown key: %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroid/content/integrity/AtomicFormula;->mKey:I

    return-void
.end method

.method private static isValidKey(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1d

    if-eq p0, v0, :cond_1d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1d

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :cond_1d
    :goto_1d
    return v0
.end method

.method static keyToString(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_38

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x8
    const-string v0, "APP_CERTIFICATE_LINEAGE"

    return-object v0

    :pswitch_1f  #0x7
    const-string v0, "STAMP_CERTIFICATE_HASH"

    return-object v0

    :pswitch_22  #0x6
    const-string v0, "STAMP_TRUSTED"

    return-object v0

    :pswitch_25  #0x5
    const-string v0, "PRE_INSTALLED"

    return-object v0

    :pswitch_28  #0x4
    const-string v0, "VERSION_CODE"

    return-object v0

    :pswitch_2b  #0x3
    const-string v0, "INSTALLER_CERTIFICATE"

    return-object v0

    :pswitch_2e  #0x2
    const-string v0, "INSTALLER_NAME"

    return-object v0

    :pswitch_31  #0x1
    const-string v0, "APP_CERTIFICATE"

    return-object v0

    :pswitch_34  #0x0
    const-string v0, "PACKAGE_NAME"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_34  #00000000
        :pswitch_31  #00000001
        :pswitch_2e  #00000002
        :pswitch_2b  #00000003
        :pswitch_28  #00000004
        :pswitch_25  #00000005
        :pswitch_22  #00000006
        :pswitch_1f  #00000007
        :pswitch_1c  #00000008
    .end packed-switch
.end method

.method static operatorToString(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x2
    const-string v0, "GTE"

    return-object v0

    :pswitch_1f  #0x1
    const-string v0, "GT"

    return-object v0

    :pswitch_22  #0x0
    const-string v0, "EQ"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_1f  #00000001
        :pswitch_1c  #00000002
    .end packed-switch
.end method


# virtual methods
.method public getKey()I
    .registers 2

    iget v0, p0, Landroid/content/integrity/AtomicFormula;->mKey:I

    return v0
.end method
