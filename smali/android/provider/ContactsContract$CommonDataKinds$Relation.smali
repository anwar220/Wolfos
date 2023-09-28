# classes3.dex

.class public final Landroid/provider/ContactsContract$CommonDataKinds$Relation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_ASSISTANT:I = 0x1

.field public static final TYPE_BROTHER:I = 0x2

.field public static final TYPE_CHILD:I = 0x3

.field public static final TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final TYPE_FATHER:I = 0x5

.field public static final TYPE_FRIEND:I = 0x6

.field public static final TYPE_MANAGER:I = 0x7

.field public static final TYPE_MOTHER:I = 0x8

.field public static final TYPE_PARENT:I = 0x9

.field public static final TYPE_PARTNER:I = 0xa

.field public static final TYPE_REFERRED_BY:I = 0xb

.field public static final TYPE_RELATIVE:I = 0xc

.field public static final TYPE_SISTER:I = 0xd

.field public static final TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5

    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    return-object p2

    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2

    packed-switch p0, :pswitch_data_40

    const v0, 0x1040670

    return v0

    :pswitch_7  #0xe
    const v0, 0x1040843

    return v0

    :pswitch_b  #0xd
    const v0, 0x1040842

    return v0

    :pswitch_f  #0xc
    const v0, 0x1040841

    return v0

    :pswitch_13  #0xb
    const v0, 0x1040840

    return v0

    :pswitch_17  #0xa
    const v0, 0x104083f

    return v0

    :pswitch_1b  #0x9
    const v0, 0x104083e

    return v0

    :pswitch_1f  #0x8
    const v0, 0x104083d

    return v0

    :pswitch_23  #0x7
    const v0, 0x104083c

    return v0

    :pswitch_27  #0x6
    const v0, 0x104083b

    return v0

    :pswitch_2b  #0x5
    const v0, 0x104083a

    return v0

    :pswitch_2f  #0x4
    const v0, 0x1040839

    return v0

    :pswitch_33  #0x3
    const v0, 0x1040837

    return v0

    :pswitch_37  #0x2
    const v0, 0x1040836

    return v0

    :pswitch_3b  #0x1
    const v0, 0x1040835

    return v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3b  #00000001
        :pswitch_37  #00000002
        :pswitch_33  #00000003
        :pswitch_2f  #00000004
        :pswitch_2b  #00000005
        :pswitch_27  #00000006
        :pswitch_23  #00000007
        :pswitch_1f  #00000008
        :pswitch_1b  #00000009
        :pswitch_17  #0000000a
        :pswitch_13  #0000000b
        :pswitch_f  #0000000c
        :pswitch_b  #0000000d
        :pswitch_7  #0000000e
    .end packed-switch
.end method
