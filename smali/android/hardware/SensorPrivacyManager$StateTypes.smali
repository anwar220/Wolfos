# classes.dex

.class public Landroid/hardware/SensorPrivacyManager$StateTypes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateTypes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorPrivacyManager$StateTypes$StateType;
    }
.end annotation


# static fields
.field public static final DISABLED:I = 0x2

.field public static final ENABLED:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
