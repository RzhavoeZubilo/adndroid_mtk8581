package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class FordSyncBinding implements ViewBinding {
    public final Button btnFordSyncDn;
    public final LinearLayout btnFordSyncDnbarDn;
    public final LinearLayout btnFordSyncDnbarUp;
    public final Button btnFordSyncKb0;
    public final Button btnFordSyncKb1;
    public final Button btnFordSyncKb2;
    public final Button btnFordSyncKb3;
    public final Button btnFordSyncKb4;
    public final Button btnFordSyncKb5;
    public final Button btnFordSyncKb6;
    public final Button btnFordSyncKb7;
    public final Button btnFordSyncKb8;
    public final Button btnFordSyncKb9;
    public final Button btnFordSyncKbA;
    public final Button btnFordSyncKbB;
    public final Button btnFordSyncKbHuang;
    public final Button btnFordSyncKbLast;
    public final Button btnFordSyncKbNext;
    public final Button btnFordSyncKbPhone;
    public final Button btnFordSyncKbSpeech;
    public final Button btnFordSyncKbSwicth;
    public final Button btnFordSyncLeft;
    public final Button btnFordSyncOk;
    public final Button btnFordSyncRight;
    public final Button btnFordSyncSolft1;
    public final Button btnFordSyncSolft2;
    public final Button btnFordSyncSolft3;
    public final Button btnFordSyncSolft4;
    public final Button btnFordSyncUp;
    public final ImageView imgFordSyncBatteryflip;
    public final ImageView imgFordSyncBatteryflip1;
    public final ImageView imgFordSyncBtcallsts;
    public final ImageView imgFordSyncBtcallsts1;
    public final ImageView imgFordSyncBtconsts;
    public final ImageView imgFordSyncBtconsts1;
    public final ImageView imgFordSyncMode;
    public final ImageView imgFordSyncMsgsts;
    public final ImageView imgFordSyncMsgsts1;
    public final ImageView imgFordSyncSigflip;
    public final ImageView imgFordSyncSigflip1;
    public final LinearLayout layoutFordSyncKeybroad;
    public final LinearLayout layoutFordSyncSolftk;
    public final LinearLayout layoutSyncTime;
    public final ListView listFordSyncInfo;
    private final RelativeLayout rootView;
    public final TextView txSyncTime;

    private FordSyncBinding(RelativeLayout relativeLayout, Button button, LinearLayout linearLayout, LinearLayout linearLayout2, Button button2, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8, Button button9, Button button10, Button button11, Button button12, Button button13, Button button14, Button button15, Button button16, Button button17, Button button18, Button button19, Button button20, Button button21, Button button22, Button button23, Button button24, Button button25, Button button26, Button button27, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, ImageView imageView8, ImageView imageView9, ImageView imageView10, ImageView imageView11, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, ListView listView, TextView textView) {
        this.rootView = relativeLayout;
        this.btnFordSyncDn = button;
        this.btnFordSyncDnbarDn = linearLayout;
        this.btnFordSyncDnbarUp = linearLayout2;
        this.btnFordSyncKb0 = button2;
        this.btnFordSyncKb1 = button3;
        this.btnFordSyncKb2 = button4;
        this.btnFordSyncKb3 = button5;
        this.btnFordSyncKb4 = button6;
        this.btnFordSyncKb5 = button7;
        this.btnFordSyncKb6 = button8;
        this.btnFordSyncKb7 = button9;
        this.btnFordSyncKb8 = button10;
        this.btnFordSyncKb9 = button11;
        this.btnFordSyncKbA = button12;
        this.btnFordSyncKbB = button13;
        this.btnFordSyncKbHuang = button14;
        this.btnFordSyncKbLast = button15;
        this.btnFordSyncKbNext = button16;
        this.btnFordSyncKbPhone = button17;
        this.btnFordSyncKbSpeech = button18;
        this.btnFordSyncKbSwicth = button19;
        this.btnFordSyncLeft = button20;
        this.btnFordSyncOk = button21;
        this.btnFordSyncRight = button22;
        this.btnFordSyncSolft1 = button23;
        this.btnFordSyncSolft2 = button24;
        this.btnFordSyncSolft3 = button25;
        this.btnFordSyncSolft4 = button26;
        this.btnFordSyncUp = button27;
        this.imgFordSyncBatteryflip = imageView;
        this.imgFordSyncBatteryflip1 = imageView2;
        this.imgFordSyncBtcallsts = imageView3;
        this.imgFordSyncBtcallsts1 = imageView4;
        this.imgFordSyncBtconsts = imageView5;
        this.imgFordSyncBtconsts1 = imageView6;
        this.imgFordSyncMode = imageView7;
        this.imgFordSyncMsgsts = imageView8;
        this.imgFordSyncMsgsts1 = imageView9;
        this.imgFordSyncSigflip = imageView10;
        this.imgFordSyncSigflip1 = imageView11;
        this.layoutFordSyncKeybroad = linearLayout3;
        this.layoutFordSyncSolftk = linearLayout4;
        this.layoutSyncTime = linearLayout5;
        this.listFordSyncInfo = listView;
        this.txSyncTime = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FordSyncBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FordSyncBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.ford_sync, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FordSyncBinding bind(View view) {
        int i = R.id.btn_ford_sync_dn;
        Button button = (Button) view.findViewById(R.id.btn_ford_sync_dn);
        if (button != null) {
            i = R.id.btn_ford_sync_dnbar_dn;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.btn_ford_sync_dnbar_dn);
            if (linearLayout != null) {
                i = R.id.btn_ford_sync_dnbar_up;
                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.btn_ford_sync_dnbar_up);
                if (linearLayout2 != null) {
                    i = R.id.btn_ford_sync_kb_0;
                    Button button2 = (Button) view.findViewById(R.id.btn_ford_sync_kb_0);
                    if (button2 != null) {
                        i = R.id.btn_ford_sync_kb_1;
                        Button button3 = (Button) view.findViewById(R.id.btn_ford_sync_kb_1);
                        if (button3 != null) {
                            i = R.id.btn_ford_sync_kb_2;
                            Button button4 = (Button) view.findViewById(R.id.btn_ford_sync_kb_2);
                            if (button4 != null) {
                                i = R.id.btn_ford_sync_kb_3;
                                Button button5 = (Button) view.findViewById(R.id.btn_ford_sync_kb_3);
                                if (button5 != null) {
                                    i = R.id.btn_ford_sync_kb_4;
                                    Button button6 = (Button) view.findViewById(R.id.btn_ford_sync_kb_4);
                                    if (button6 != null) {
                                        i = R.id.btn_ford_sync_kb_5;
                                        Button button7 = (Button) view.findViewById(R.id.btn_ford_sync_kb_5);
                                        if (button7 != null) {
                                            i = R.id.btn_ford_sync_kb_6;
                                            Button button8 = (Button) view.findViewById(R.id.btn_ford_sync_kb_6);
                                            if (button8 != null) {
                                                i = R.id.btn_ford_sync_kb_7;
                                                Button button9 = (Button) view.findViewById(R.id.btn_ford_sync_kb_7);
                                                if (button9 != null) {
                                                    i = R.id.btn_ford_sync_kb_8;
                                                    Button button10 = (Button) view.findViewById(R.id.btn_ford_sync_kb_8);
                                                    if (button10 != null) {
                                                        i = R.id.btn_ford_sync_kb_9;
                                                        Button button11 = (Button) view.findViewById(R.id.btn_ford_sync_kb_9);
                                                        if (button11 != null) {
                                                            i = R.id.btn_ford_sync_kb_a;
                                                            Button button12 = (Button) view.findViewById(R.id.btn_ford_sync_kb_a);
                                                            if (button12 != null) {
                                                                i = R.id.btn_ford_sync_kb_b;
                                                                Button button13 = (Button) view.findViewById(R.id.btn_ford_sync_kb_b);
                                                                if (button13 != null) {
                                                                    i = R.id.btn_ford_sync_kb_huang;
                                                                    Button button14 = (Button) view.findViewById(R.id.btn_ford_sync_kb_huang);
                                                                    if (button14 != null) {
                                                                        i = R.id.btn_ford_sync_kb_last;
                                                                        Button button15 = (Button) view.findViewById(R.id.btn_ford_sync_kb_last);
                                                                        if (button15 != null) {
                                                                            i = R.id.btn_ford_sync_kb_next;
                                                                            Button button16 = (Button) view.findViewById(R.id.btn_ford_sync_kb_next);
                                                                            if (button16 != null) {
                                                                                i = R.id.btn_ford_sync_kb_phone;
                                                                                Button button17 = (Button) view.findViewById(R.id.btn_ford_sync_kb_phone);
                                                                                if (button17 != null) {
                                                                                    i = R.id.btn_ford_sync_kb_speech;
                                                                                    Button button18 = (Button) view.findViewById(R.id.btn_ford_sync_kb_speech);
                                                                                    if (button18 != null) {
                                                                                        i = R.id.btn_ford_sync_kb_swicth;
                                                                                        Button button19 = (Button) view.findViewById(R.id.btn_ford_sync_kb_swicth);
                                                                                        if (button19 != null) {
                                                                                            i = R.id.btn_ford_sync_left;
                                                                                            Button button20 = (Button) view.findViewById(R.id.btn_ford_sync_left);
                                                                                            if (button20 != null) {
                                                                                                i = R.id.btn_ford_sync_ok;
                                                                                                Button button21 = (Button) view.findViewById(R.id.btn_ford_sync_ok);
                                                                                                if (button21 != null) {
                                                                                                    i = R.id.btn_ford_sync_right;
                                                                                                    Button button22 = (Button) view.findViewById(R.id.btn_ford_sync_right);
                                                                                                    if (button22 != null) {
                                                                                                        i = R.id.btn_ford_sync_solft1;
                                                                                                        Button button23 = (Button) view.findViewById(R.id.btn_ford_sync_solft1);
                                                                                                        if (button23 != null) {
                                                                                                            i = R.id.btn_ford_sync_solft2;
                                                                                                            Button button24 = (Button) view.findViewById(R.id.btn_ford_sync_solft2);
                                                                                                            if (button24 != null) {
                                                                                                                i = R.id.btn_ford_sync_solft3;
                                                                                                                Button button25 = (Button) view.findViewById(R.id.btn_ford_sync_solft3);
                                                                                                                if (button25 != null) {
                                                                                                                    i = R.id.btn_ford_sync_solft4;
                                                                                                                    Button button26 = (Button) view.findViewById(R.id.btn_ford_sync_solft4);
                                                                                                                    if (button26 != null) {
                                                                                                                        i = R.id.btn_ford_sync_up;
                                                                                                                        Button button27 = (Button) view.findViewById(R.id.btn_ford_sync_up);
                                                                                                                        if (button27 != null) {
                                                                                                                            i = R.id.img_ford_sync_batteryflip;
                                                                                                                            ImageView imageView = (ImageView) view.findViewById(R.id.img_ford_sync_batteryflip);
                                                                                                                            if (imageView != null) {
                                                                                                                                i = R.id.img_ford_sync_batteryflip1;
                                                                                                                                ImageView imageView2 = (ImageView) view.findViewById(R.id.img_ford_sync_batteryflip1);
                                                                                                                                if (imageView2 != null) {
                                                                                                                                    i = R.id.img_ford_sync_btcallsts;
                                                                                                                                    ImageView imageView3 = (ImageView) view.findViewById(R.id.img_ford_sync_btcallsts);
                                                                                                                                    if (imageView3 != null) {
                                                                                                                                        i = R.id.img_ford_sync_btcallsts1;
                                                                                                                                        ImageView imageView4 = (ImageView) view.findViewById(R.id.img_ford_sync_btcallsts1);
                                                                                                                                        if (imageView4 != null) {
                                                                                                                                            i = R.id.img_ford_sync_btconsts;
                                                                                                                                            ImageView imageView5 = (ImageView) view.findViewById(R.id.img_ford_sync_btconsts);
                                                                                                                                            if (imageView5 != null) {
                                                                                                                                                i = R.id.img_ford_sync_btconsts1;
                                                                                                                                                ImageView imageView6 = (ImageView) view.findViewById(R.id.img_ford_sync_btconsts1);
                                                                                                                                                if (imageView6 != null) {
                                                                                                                                                    i = R.id.img_ford_sync_mode;
                                                                                                                                                    ImageView imageView7 = (ImageView) view.findViewById(R.id.img_ford_sync_mode);
                                                                                                                                                    if (imageView7 != null) {
                                                                                                                                                        i = R.id.img_ford_sync_msgsts;
                                                                                                                                                        ImageView imageView8 = (ImageView) view.findViewById(R.id.img_ford_sync_msgsts);
                                                                                                                                                        if (imageView8 != null) {
                                                                                                                                                            i = R.id.img_ford_sync_msgsts1;
                                                                                                                                                            ImageView imageView9 = (ImageView) view.findViewById(R.id.img_ford_sync_msgsts1);
                                                                                                                                                            if (imageView9 != null) {
                                                                                                                                                                i = R.id.img_ford_sync_sigflip;
                                                                                                                                                                ImageView imageView10 = (ImageView) view.findViewById(R.id.img_ford_sync_sigflip);
                                                                                                                                                                if (imageView10 != null) {
                                                                                                                                                                    i = R.id.img_ford_sync_sigflip1;
                                                                                                                                                                    ImageView imageView11 = (ImageView) view.findViewById(R.id.img_ford_sync_sigflip1);
                                                                                                                                                                    if (imageView11 != null) {
                                                                                                                                                                        i = R.id.layout_ford_sync_keybroad;
                                                                                                                                                                        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.layout_ford_sync_keybroad);
                                                                                                                                                                        if (linearLayout3 != null) {
                                                                                                                                                                            i = R.id.layout_ford_sync_solftk;
                                                                                                                                                                            LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.layout_ford_sync_solftk);
                                                                                                                                                                            if (linearLayout4 != null) {
                                                                                                                                                                                i = R.id.layout_sync_time;
                                                                                                                                                                                LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.layout_sync_time);
                                                                                                                                                                                if (linearLayout5 != null) {
                                                                                                                                                                                    i = R.id.list_ford_sync_info;
                                                                                                                                                                                    ListView listView = (ListView) view.findViewById(R.id.list_ford_sync_info);
                                                                                                                                                                                    if (listView != null) {
                                                                                                                                                                                        i = R.id.tx_sync_time;
                                                                                                                                                                                        TextView textView = (TextView) view.findViewById(R.id.tx_sync_time);
                                                                                                                                                                                        if (textView != null) {
                                                                                                                                                                                            return new FordSyncBinding((RelativeLayout) view, button, linearLayout, linearLayout2, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16, button17, button18, button19, button20, button21, button22, button23, button24, button25, button26, button27, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11, linearLayout3, linearLayout4, linearLayout5, listView, textView);
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
